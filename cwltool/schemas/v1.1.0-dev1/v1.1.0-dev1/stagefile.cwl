class: CommandLineTool
cwlVersion: v1.1.0-dev1
requirements:
  InitialWorkDirRequirement:
    listing:
      - entry: $(inputs.infile)
        entryname: bob.txt
        writable: true
inputs:
  infile: File
outputs:
  outfile:
    type: File
    outputBinding:
      glob: bob.txt
baseCommand: "python"
arguments:
  - "-c"
  - |
    f = open("bob.txt", "r+")
    f.seek(8)
    f.write("Bob.    ")
    f.close()
