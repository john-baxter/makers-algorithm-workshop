# sourced from https://www.lipsum.com/

$lorem_ipsum_array = ["lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit", "sed", "imperdiet", "est", "lectus", "et", "lacinia", "dui", "feugiat", "morbi", "vel", "semper", "ante", "in", "rutrum", "nisl", "maecenas", "malesuada", "nunc", "elementum", "quisque", "fermentum", "arcu", "ut", "cursus", "pellentesque", "vivamus", "nulla", "sodales", "tincidunt", "leo", "proin", "a", "sollicitudin", "quam", "id", "auctor", "augue", "donec", "porta", "volutpat", "ligula", "non", "convallis", "urna", "finibus", "aliquam", "ornare", "ex", "vitae", "massa", "scelerisque", "quis", "congue", "bibendum", "commodo", "felis", "placerat", "sem", "ultricies", "cras", "orci", "nec", "euismod", "rhoncus", "posuere", "eros", "efficitur", "pretium", "vestibulum", "primis", "faucibus", "luctus", "ultrices", "cubilia", "curae;", "nibh", "tempor", "ac", "molestie", "nam", "eu", "dignissim", "odio", "aenean", "purus", "eleifend", "mi", "venenatis", "lacus", "aliquet", "tempus", "laoreet", "pharetra", "suspendisse", "metus", "tellus", "pulvinar", "turpis", "justo", "praesent", "fringilla", "at", "iaculis", "nisi", "tortor", "nullam", "enim", "velit", "phasellus", "consequat", "vehicula", "libero", "maximus", "egestas", "hendrerit", "viverra", "diam", "interdum", "facilisis", "duis", "curabitur", "integer", "erat", "lobortis", "mauris", "eget", "risus", "blandit", "accumsan", "dapibus", "suscipit", "neque", "sagittis", "fames", "mattis", "magna", "varius", "porttitor", "tristique", "etiam", "dictum", "sapien", "ullamcorper", "condimentum", "facilisi", "gravida", "fusce", "class", "aptent", "taciti", "sociosqu", "ad", "litora", "torquent", "per", "conubia", "nostra", "inceptos", "himenaeos", "vulputate", "potenti", "mollis", "natoque", "penatibus", "magnis", "dis", "parturient", "montes", "nascetur", "ridiculus", "mus", "hac", "habitasse", "platea", "dictumst", "habitant", "senectus", "netus"]

$test_lorem_ipsum = Array.new(200) { |i| i = $lorem_ipsum_array[rand($lorem_ipsum_array.length)] }