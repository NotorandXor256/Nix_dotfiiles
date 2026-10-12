{ ... }: {
  programs.bash={
	  enable = true;
	  shellAliases = {
      n = "nnn";
	    btw = "echo 'I use nixos'";
	  };
  };
  
}
