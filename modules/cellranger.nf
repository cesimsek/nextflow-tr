process {

    input:
        path sequences

    output:

    when:
    //conditional

    script:
    // does not have to be a bash script
    """
     #!/usr/bin/env python

    x = 'Hello'
    y = 'world!'
    print "%s - %s" % (x,y)
    """
}