CREATE TABLE test.table1 (
CONSTRAINT c01 PRIMARY KEY (f01),
INDEX (f03),
f01 INTEGER,
f02 INTEGER,
f03 INTEGER,
f04 VARCHAR(10),
f05 INTEGER,
CONSTRAINT c02 UNIQUE INDEX (f02),
FULLTEXT(f04),
FOREIGN KEY (f05) REFERENCES test.table2(id) ON DELETE SET NULL ON UPDATE no action,
CHECK (f01<>f02)
);
