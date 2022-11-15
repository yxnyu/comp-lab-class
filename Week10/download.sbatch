# download via button above  -OR-  following line
 curl "http://vergil.chemistry.gatech.edu/psicode-download/Psi4conda-1.6.1-py38-Linux-x86_64.sh" -o Psi4conda-1.6.1-py38-Linux-x86_64.sh --keepalive-time 2
 bash Psi4conda-1.6.1-py38-Linux-x86_64.sh -b -p $HOME/psi4conda
  echo $'. $HOME/psi4conda/etc/profile.d/conda.sh\nconda activate' >> ~/.bashrc
  echo "source $HOME/psi4conda/etc/profile.d/conda.csh\nconda activate" >> ~/.tcshrc
# log out, log back in so conda and psi4 in path
 psi4 --test