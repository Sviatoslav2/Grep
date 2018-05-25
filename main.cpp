#include <boost/filesystem/operations.hpp>
#include <boost/algorithm/string.hpp>
#include <iostream>
#include <fstream>
#include <cstring>
#include <regex>

using namespace std;
namespace fs1 = boost::filesystem;

std::pair<std::vector<bool>,std::vector<std::string>> confVector(int len,char *argv[]){
    std::vector<bool> Vector1;
    std::vector<std::string> Vector2;
    string fname;
    string rstring;
    std::string grep;
    Vector1.resize(4, false);
    for (int i = 0; i < len; ++i) {
        if (string(argv[i]).compare("-v") == 0) {
            Vector1[0] = true;
        } else if (string(argv[i]).compare("-i") == 0) {
            Vector1[1] = true;
        }
         else if (boost::algorithm::starts_with(argv[i], "--regexp=")) {
            rstring = string(argv[i]);
            rstring = rstring.substr(rstring.find("=") + 1, rstring.size());
            Vector1[2] = true;
        } else if (boost::algorithm::starts_with(argv[i], "--file=")) {
            fname = string(argv[i]);
            fname = fname.substr(fname.find("=") + 1, fname.size());
            Vector1[3] = true;
        }
        else{
            grep = argv[i];
        }
    }
    Vector2.emplace_back(grep);
    Vector2.emplace_back(rstring);
    Vector2.emplace_back(fname);

    std::pair<std::vector<bool>,std::vector<std::string>> Pair = std::make_pair(Vector1, Vector2);
    return Pair;
}
int main(int argc, char *argv[]) {


    auto Pair = confVector(argc,argv);
    bool KyeI = Pair.first[0];
    bool invert = Pair.first[1];
    bool is_regexp = Pair.first[2];
    bool has_file = Pair.first[3];
    string grep = Pair.second[0];
    string fname = Pair.second[2];
    string rstring =Pair.second[1];
    std::cout << is_regexp << "\n";
    string str;
    if (not has_file) {
        std::cout << "Please type a sentence\n";
        std::cin >> str;
        string to_check = str;
        if (KyeI){
            boost::to_lower(to_check);
            boost::to_lower(grep);
            boost::to_lower(rstring);
        }
        if (is_regexp){
            std::regex regexp(rstring);
            if (invert && !regex_search(to_check, regexp)) {
                std::cout << "Answer == " << str << "\n";
            }
            else if (regex_search(to_check, regexp)){
                std::cout << "Answer == " << str << "\n";
            }
        } else if (invert && (to_check.find(grep) == string::npos)) {
            cout << "Answer == " << str << "\n";
        }
        else if (to_check.find(grep) != string::npos) {
            cout << "Answer == " << str << "\n";
        }
    }
    else{
        ifstream file(fname);
        while (getline(file, str)){
            string to_check = str;
            if (KyeI) {
                boost::to_lower(to_check);
                boost::to_lower(grep);
                boost::to_lower(rstring);
            }
            if (is_regexp){
                std::regex regexp(rstring);
                if(invert && (!regex_search(to_check, regexp))) {
                    cout << "Answer == " << str << "\n";
                }
                else if(regex_search(to_check, regexp)) {
                    cout << "Answer == " << str << "\n";
                }
            }
            else if(invert && (to_check.find(grep) == string::npos)) {
                cout << "Answer == " << str << "\n";
            }
            else if(to_check.find(grep) != string::npos) {
                cout << "Answer == " << str << "\n";
            }
        }
    }

}