# 설치법

리눅스의 환경설정을 쉽게 하기 위한 스크립트를 보관한다.

vim 의 컬러스키마 경로 확인 후 start.sh 수정  
  $ cd /usr/share/vim/vim73/colors/      // 73은 각 버전

실행  
  $ ./start.sh
  
vim 에서 명령어 실행  
  :PluginInstall

재부팅  
  sudo reboot -h now

# 사용법
  
NERD ======================  
 * F2 NERD Toggle
 * F3 NERD Find
 * F4 NERD Preview
 * s : 파일 분할창 열기
 * t : 파일 새탭 열기
 * q : NERD 끄기
 * C : 선택 디렉토리를 root로 만들기  
   
Search ======================  
 * F5 검색
   
CTAGS ======================  
 * :ta 텍스트	// 바로 이동
 * :tn		// 다음 태그로
 * :tp		// 이전 태그로
 * :tj 텍스트	// 2개이상인 경우 목록을 보여줌
 * Ctrl + ]	// 커서위치 텍스트로 이동
 * Ctrl + t	// 이전 위치로 이동
   
GTAGS ======================  
(데이터초기화)  
$ find folder1 folder2 folder3 -type f -print >gtags.files // 코드가 있는 디렉토리만 선택 (옵션)  
$ gtags  // 데이터 생성  
 * :Gtags 텍스트		// 텍스트가 위치한 곳을 검색
 * :Gtags -r 함수명 	// 함수를 사용하는 곳을 검색
 * :Gtags -s 변수명	// 변수를 사용하는 곳을 검색
 * :Gtags -Po 파일명	// 파일 명 검색  
 
 
 
 
 
 
