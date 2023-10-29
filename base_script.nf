//
nextflow.enable.dsl=2

// Parameters
params.input = "data/reads/*.fastq.gz"
params.db = "data/db"

process BLASTN {
    input:
    path input
    path db

    output:
    file "blastn.out" into blastn_out // remove from & into?

    script:
    """
    blastn -query $input -db $db -out blastn.out
    """
}

workflow {
    BLASTN(input, db) //TODO: how to pass params?
}

// if not otherwise specified, the processes are ran locally (executor)

// separate workflows as well as separate processes