# module vs class
# http://stackoverflow.com/questions/151505/difference-between-a-class-and-a-module

module Complement

	DNA_TO_RNA = {
		'G' => 'C', 
		'C' => 'G', 
		'T' => 'A', 
		'A' => 'U', 
	}

	RNA_TO_DNA = {
		'G' => 'C', 
		'C' => 'G', 
		'U' => 'A', 
		'A' => 'T', 
	}

	def self.of_dna(dna)
		raise ArgumentError, "DNA cannot have U as a nucleotide" if (dna.include? 'U')
		dna.chars.map { |nucleotide| DNA_TO_RNA[nucleotide] }.join
	end

	def self.of_rna(rna)
		raise ArgumentError, "RNA cannot have T as a nucleotide" if (rna.include? 'T')
		rna.chars.map { |nucleotide| RNA_TO_DNA[nucleotide] }.join
	end
end