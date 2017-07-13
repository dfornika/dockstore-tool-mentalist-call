cwlVersion: v1.0
class: CommandLineTool
baseCommand: julia /tool/MentaLiST.jl
inputs:
  output_filename:
    type: string
    inputBinding:
      position: 1
      prefix: -o
  sample_name:
    type: string
    inputBinding:
      position: 2
      prefix: -s
      separate: true
  kmer_db:
    type: File
    inputBinding:
      position: 3
      prefix: --db
  input_fastqs:
    type: string[]
    inputBinding:
      position: 4
      itemSeparator: " "
outputs:
  mlst_results:
    type: File
    outputBinding:
      glob: $(inputs.output_filename)