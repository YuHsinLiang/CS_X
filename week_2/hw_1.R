########################################################## 
# �[���@�~�G
# ���n�������ؼ��ܽ�����A�ǲߦp��N���������D��Ѧ��@�Ӥ@�Ӥp���D�ӸѨM
# �m�� R function ���ϥ�

# OOXX �C���m��
# 1. �]�p�@�Ө�H��OOXX�C���C
# 2. �C�����a����A�BB�CA ����A�ϥΪ��Ÿ���'O'; B ���A�ϥΪ��Ÿ���'X'
# 3. �C���@�}�l�A�п�X�H�U�C�����ܡA�åB���d���ݪ��aA��J

#    Round 0
#    Now is player A's term!
#    Player A input(1~9) : 
rou=0
tur=2
r1=c(0,0,0)
r2=c(0,0,0)
r3=c(0,0,0)
s=c("","","","","","","","","")
map=rbind(r1, r2, r3)
while(0<1){
  wturn=tur%%2
  print(paste("Round ",rou))
  if(wturn==0){
    print("Now is player A's turn!")
    m=readline("Player A input(1~9) :")
    if(m=="exit"){
      print("bye-bye")
      break
    }
    n=as.integer(m)
    if(n<1||n>9){
      print("Invalid input! Please re-enter!")
      next
    }
    if(s[n]=="O"||s[n]=="X"){
      print("This position is already occupied!")
      next
    }
  }else{
    print("Now is player B's turn!")
    m=readline("Player A input(1~9) :")
    if(m=="exit"){
      print("bye-bye")
      break
    }
    n=as.integer(m)
    if(n<1||n>9){
      print("Invalid input! Please re-enter!")
      next
    }
    if(s[n]=="O"||s[n]=="X"){
      print("This position is already occupied!")
      next
    }
  }
  
  for(i in 1:n/3+1){
    for(j in 1:n%%4){
      if(wturn==0){
        map[i,j]=1
        s[n]="O"
      }else{
        map[i,j]=2
        s[n]="X"
      }
    }
  }
  print(paste(s[1],"|",s[2],"|",s[3]))
  print("_____")
  print(paste(s[4],"|",s[5],"|",s[6]))
  print("_____")
  print(paste(s[7],"|",s[8],"|",s[9]))
  rou=rou+1
  tur=tur+1
}




# 4. ���a�̥i�H��J���Ʀr�d�� 1~9�A�̧ǹ����E�c�檺�E���m�C
#    �p�G��J���~�A�Ч���I��X�H�U�C�����ܡC

#    Invalid input! Please re-enter! 
#    Round 0
#    Now is player A's term!
#    Player A input(1~9) : 

# 5. �ݪ��a���T��J����A�п�X�H�U�C������(���ɪ��C���ϧΪ��p)�A�åB���ݤ�����t�~�@�쪱�a���ݿ�J�C
#    * �����A�O�o�W�['Round'���ơA�H�Τ����ϥΪ�

#    O| | 
#    _____
#     | | 
#    _____
#     | | 
#    **************
#    Round 1
#    Now is player B's term!
#    Player B input(1~9) : 

# 6. �����a��J����m���e�w�g��'O'��'X'�ɡA�п�X�H�U�C�����ܡC

#    This position is already occupied!
#    Round 1
#    Now is player B's term!
#    Player B input(1~9) : 

# 7. ���ϥΪ̿�J'exit'�ɡA�����C���æL�X�H�U�C������ 

#    Bye-Bye!!

# 8. �P�_�C�������I���T�Ӫ��ơB��ơB�Ϊ̱ױƮɡA�п�X�H�U�C������(���ɪ��C���ϧΪ��p)�A�åB��X�ӧQ�����a�C

#    O|X|O
#    _____
#    X|O|X
#    _____
#    O| | 
#    **************
#    Player A wins!!! 
#

# 9. ���Ů�ҳQ�񺡥B�L���a��ӮɡA�п�X�H�U�C������(���ɪ��C���ϧΪ��p)�H�ΩM���C�����ܡC

#   O|O|X
#   _____
#   X|X|O
#   _____
#   O|X|O
#   **************
#   End in a draw!!! 