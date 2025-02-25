
rule Generic_Dropper  {
   meta:
      description = "Detects Dropper PDB string in file"
      license = "Detection Rule License 1.1"
      author = "Florian Roth"
      reference = "https://goo.gl/JAHZVL"
      date = "2018-03-03"
   strings:
      $s1 = "\\Release\\Dropper.pdb"
      $s2 = "\\Release\\dropper.pdb"
      $s3 = "\\Debug\\Dropper.pdb"
      $s4 = "\\Debug\\dropper.pdb"
   condition:
      uint16(0) == 0x5a4d and filesize < 900KB and 1 of them
}
