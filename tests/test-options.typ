// Test: New configurable parameters
#set page(width: auto, height: auto, margin: 5pt)

#import "../lib.typ": periodic-table, periodic-table-detailed

// Test 1: Compact table without title and legend
#periodic-table(show-title: false, show-legend: false)

#pagebreak()

// Test 2: Compact table with highlighted elements (alkali metals)
#periodic-table(highlighted: (3, 11, 19, 37, 55, 87))

#pagebreak()

// Test 3: Compact table with custom highlight stroke
#periodic-table(
  highlighted: (6, 7, 8),  // C, N, O
  highlight-stroke: blue + 3pt
)

#pagebreak()

// Test 4: Detailed table without labels and legend
#periodic-table-detailed(show-labels: false, show-legend: false)

#pagebreak()

// Test 5: Detailed table with highlighted noble gases
#periodic-table-detailed(highlighted: (2, 10, 18, 36, 54, 86, 118))

#pagebreak()

// Test 6: Detailed table with custom green highlight
#periodic-table-detailed(
  highlighted: (26, 27, 28, 29),  // Fe, Co, Ni, Cu
  highlight-stroke: green + 2.5pt
)
