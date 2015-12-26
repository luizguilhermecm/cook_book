--------------------------------------------------------------------------------
-- Text Search
--------------------------------------------------------------------------------

-- tsvector : data type
-- A tsvector value is a sorted list of distinct lexemes.
-- Leximes are words that have been normalized to merge different
-- variants of the same word 
select 'this is a example string'::tsvector
-- output:
-- 'a' 'example' 'is' 'string' 'this'

-- to_tsvector : function
-- to_tsvector returns an array of leximes, normalized by an specific language,
-- which will exclude the stop words ...
select to_tsvector('english', 'this is a example string')
-- output:
-- 'exampl':4 'string':5

-- tsquery : data type
-- A tsquery value stores lexemes that are to be searched for, and
-- combines them honoring the Boolean operators & (AND), | (OR), and
-- ! (NOT).
select 'neutrino|(dark & matter)'::tsquery
-- output:
-- 'neutrino' | 'dark' & 'matter'

-- to_tsquery
select to_tsquery('neutrino|(dark & matter)')
-- output:
-- 'neutrino' | 'dark' & 'matter'

-- plainto_tsquery
select plainto_tsquery('portuguese', 'é validar adequadamente as entradas de dados dos usuários.'))
-- output:
-- 'é' & 'valid' & 'adequ' & 'entrad' & 'dad' & 'usuári'

-- ts_rank (::tsvector, ::tsquery)

