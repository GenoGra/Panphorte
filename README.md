# PANPHORTE

PANPHORTE is a C++ command-line tool for topology optimization in pangenome graphs. It is designed to detect repeat-driven misrepresentations inside graph superbubbles and rewrite them into explicit cyclic structures, improving how Copy Number Variations (CNVs) and Variable Number Tandem Repeats (VNTRs) are represented.

In many pangenome graphs, repeated regions are encoded as alternative acyclic paths rather than as cycles. This can reduce graph interpretability, introduce redundancy, and negatively affect downstream analyses such as sequence-to-graph alignment. PANPHORTE addresses this issue by identifying shared repetitive elements across bubble traversals and refactoring the graph topology into a more compact and biologically faithful representation.

According to the accompanying work, this strategy can reduce graph redundancy, improve memory footprint, and support better exact matching during downstream alignment workflows.

## Features

- Detects repeat-driven misrepresentations in pangenome graph superbubbles
- Refactors repeated regions into explicit cyclic graph structures
- Preserves the represented sequence information
- Provides a lightweight C++ implementation
- Can be used as part of a broader graph optimization workflow together with GFAffix [1]

## Repository structure

```text
Panphorte/
├── README.md
├── data
│   └── example.gfa
├── src
│   └── main.cpp
└── vendor
    └── json.hpp
```

## References
[1] Gfaffix [GitHub](https://github.com/codialab/GFAffix.git)
