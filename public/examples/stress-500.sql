-- SpaghetDB deterministic 500-table stress fixture.

-- Generated with: npm run generate:stress

CREATE SCHEMA stress;

CREATE TABLE stress.entity_0001 (
  id BIGINT PRIMARY KEY,
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE TABLE stress.entity_0002 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0001(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0002_parent_idx ON stress.entity_0002(parent_id);

CREATE TABLE stress.entity_0003 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0001(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0003_parent_idx ON stress.entity_0003(parent_id);

CREATE TABLE stress.entity_0004 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0001(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0004_parent_idx ON stress.entity_0004(parent_id);

CREATE TABLE stress.entity_0005 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0002(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0005_parent_idx ON stress.entity_0005(parent_id);

CREATE TABLE stress.entity_0006 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0002(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0006_parent_idx ON stress.entity_0006(parent_id);

CREATE TABLE stress.entity_0007 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0002(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0007_parent_idx ON stress.entity_0007(parent_id);

CREATE TABLE stress.entity_0008 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0003(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0008_parent_idx ON stress.entity_0008(parent_id);

CREATE TABLE stress.entity_0009 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0003(id),
  owner_id BIGINT REFERENCES stress.entity_0002(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0009_parent_idx ON stress.entity_0009(parent_id);

CREATE INDEX entity_0009_owner_idx ON stress.entity_0009(owner_id);

CREATE TABLE stress.entity_0010 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0003(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0010_parent_idx ON stress.entity_0010(parent_id);

CREATE TABLE stress.entity_0011 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0004(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0011_parent_idx ON stress.entity_0011(parent_id);

CREATE TABLE stress.entity_0012 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0004(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0012_parent_idx ON stress.entity_0012(parent_id);

CREATE TABLE stress.entity_0013 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0004(id),
  owner_id BIGINT REFERENCES stress.entity_0006(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0013_parent_idx ON stress.entity_0013(parent_id);

CREATE INDEX entity_0013_owner_idx ON stress.entity_0013(owner_id);

CREATE TABLE stress.entity_0014 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0005(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0014_parent_idx ON stress.entity_0014(parent_id);

CREATE TABLE stress.entity_0015 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0005(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0015_parent_idx ON stress.entity_0015(parent_id);

CREATE TABLE stress.entity_0016 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0005(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0016_parent_idx ON stress.entity_0016(parent_id);

CREATE TABLE stress.entity_0017 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0006(id),
  owner_id BIGINT REFERENCES stress.entity_0010(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0017_parent_idx ON stress.entity_0017(parent_id);

CREATE INDEX entity_0017_owner_idx ON stress.entity_0017(owner_id);

CREATE TABLE stress.entity_0018 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0006(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0018_parent_idx ON stress.entity_0018(parent_id);

CREATE TABLE stress.entity_0019 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0006(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0019_parent_idx ON stress.entity_0019(parent_id);

CREATE TABLE stress.entity_0020 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0007(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0020_parent_idx ON stress.entity_0020(parent_id);

CREATE TABLE stress.entity_0021 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0007(id),
  owner_id BIGINT REFERENCES stress.entity_0014(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0021_parent_idx ON stress.entity_0021(parent_id);

CREATE INDEX entity_0021_owner_idx ON stress.entity_0021(owner_id);

CREATE TABLE stress.entity_0022 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0007(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0022_parent_idx ON stress.entity_0022(parent_id);

CREATE TABLE stress.entity_0023 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0008(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0023_parent_idx ON stress.entity_0023(parent_id);

CREATE TABLE stress.entity_0024 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0008(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0024_parent_idx ON stress.entity_0024(parent_id);

CREATE TABLE stress.entity_0025 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0008(id),
  owner_id BIGINT REFERENCES stress.entity_0018(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0025_parent_idx ON stress.entity_0025(parent_id);

CREATE INDEX entity_0025_owner_idx ON stress.entity_0025(owner_id);

CREATE TABLE stress.entity_0026 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0009(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0026_parent_idx ON stress.entity_0026(parent_id);

CREATE TABLE stress.entity_0027 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0009(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0027_parent_idx ON stress.entity_0027(parent_id);

CREATE TABLE stress.entity_0028 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0009(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0028_parent_idx ON stress.entity_0028(parent_id);

CREATE TABLE stress.entity_0029 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0010(id),
  owner_id BIGINT REFERENCES stress.entity_0022(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0029_parent_idx ON stress.entity_0029(parent_id);

CREATE INDEX entity_0029_owner_idx ON stress.entity_0029(owner_id);

CREATE TABLE stress.entity_0030 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0010(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0030_parent_idx ON stress.entity_0030(parent_id);

CREATE TABLE stress.entity_0031 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0010(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0031_parent_idx ON stress.entity_0031(parent_id);

CREATE TABLE stress.entity_0032 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0011(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0032_parent_idx ON stress.entity_0032(parent_id);

CREATE TABLE stress.entity_0033 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0011(id),
  owner_id BIGINT REFERENCES stress.entity_0026(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0033_parent_idx ON stress.entity_0033(parent_id);

CREATE INDEX entity_0033_owner_idx ON stress.entity_0033(owner_id);

CREATE TABLE stress.entity_0034 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0011(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0034_parent_idx ON stress.entity_0034(parent_id);

CREATE TABLE stress.entity_0035 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0012(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0035_parent_idx ON stress.entity_0035(parent_id);

CREATE TABLE stress.entity_0036 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0012(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0036_parent_idx ON stress.entity_0036(parent_id);

CREATE TABLE stress.entity_0037 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0012(id),
  owner_id BIGINT REFERENCES stress.entity_0030(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0037_parent_idx ON stress.entity_0037(parent_id);

CREATE INDEX entity_0037_owner_idx ON stress.entity_0037(owner_id);

CREATE TABLE stress.entity_0038 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0013(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0038_parent_idx ON stress.entity_0038(parent_id);

CREATE TABLE stress.entity_0039 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0013(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0039_parent_idx ON stress.entity_0039(parent_id);

CREATE TABLE stress.entity_0040 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0013(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0040_parent_idx ON stress.entity_0040(parent_id);

CREATE TABLE stress.entity_0041 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0014(id),
  owner_id BIGINT REFERENCES stress.entity_0034(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0041_parent_idx ON stress.entity_0041(parent_id);

CREATE INDEX entity_0041_owner_idx ON stress.entity_0041(owner_id);

CREATE TABLE stress.entity_0042 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0014(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0042_parent_idx ON stress.entity_0042(parent_id);

CREATE TABLE stress.entity_0043 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0014(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0043_parent_idx ON stress.entity_0043(parent_id);

CREATE TABLE stress.entity_0044 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0015(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0044_parent_idx ON stress.entity_0044(parent_id);

CREATE TABLE stress.entity_0045 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0015(id),
  owner_id BIGINT REFERENCES stress.entity_0038(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0045_parent_idx ON stress.entity_0045(parent_id);

CREATE INDEX entity_0045_owner_idx ON stress.entity_0045(owner_id);

CREATE TABLE stress.entity_0046 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0015(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0046_parent_idx ON stress.entity_0046(parent_id);

CREATE TABLE stress.entity_0047 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0016(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0047_parent_idx ON stress.entity_0047(parent_id);

CREATE TABLE stress.entity_0048 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0016(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0048_parent_idx ON stress.entity_0048(parent_id);

CREATE TABLE stress.entity_0049 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0016(id),
  owner_id BIGINT REFERENCES stress.entity_0042(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0049_parent_idx ON stress.entity_0049(parent_id);

CREATE INDEX entity_0049_owner_idx ON stress.entity_0049(owner_id);

CREATE TABLE stress.entity_0050 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0017(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0050_parent_idx ON stress.entity_0050(parent_id);

CREATE TABLE stress.entity_0051 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0017(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0051_parent_idx ON stress.entity_0051(parent_id);

CREATE TABLE stress.entity_0052 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0017(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0052_parent_idx ON stress.entity_0052(parent_id);

CREATE TABLE stress.entity_0053 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0018(id),
  owner_id BIGINT REFERENCES stress.entity_0046(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0053_parent_idx ON stress.entity_0053(parent_id);

CREATE INDEX entity_0053_owner_idx ON stress.entity_0053(owner_id);

CREATE TABLE stress.entity_0054 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0018(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0054_parent_idx ON stress.entity_0054(parent_id);

CREATE TABLE stress.entity_0055 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0018(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0055_parent_idx ON stress.entity_0055(parent_id);

CREATE TABLE stress.entity_0056 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0019(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0056_parent_idx ON stress.entity_0056(parent_id);

CREATE TABLE stress.entity_0057 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0019(id),
  owner_id BIGINT REFERENCES stress.entity_0050(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0057_parent_idx ON stress.entity_0057(parent_id);

CREATE INDEX entity_0057_owner_idx ON stress.entity_0057(owner_id);

CREATE TABLE stress.entity_0058 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0019(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0058_parent_idx ON stress.entity_0058(parent_id);

CREATE TABLE stress.entity_0059 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0020(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0059_parent_idx ON stress.entity_0059(parent_id);

CREATE TABLE stress.entity_0060 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0020(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0060_parent_idx ON stress.entity_0060(parent_id);

CREATE TABLE stress.entity_0061 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0020(id),
  owner_id BIGINT REFERENCES stress.entity_0054(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0061_parent_idx ON stress.entity_0061(parent_id);

CREATE INDEX entity_0061_owner_idx ON stress.entity_0061(owner_id);

CREATE TABLE stress.entity_0062 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0021(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0062_parent_idx ON stress.entity_0062(parent_id);

CREATE TABLE stress.entity_0063 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0021(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0063_parent_idx ON stress.entity_0063(parent_id);

CREATE TABLE stress.entity_0064 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0021(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0064_parent_idx ON stress.entity_0064(parent_id);

CREATE TABLE stress.entity_0065 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0022(id),
  owner_id BIGINT REFERENCES stress.entity_0058(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0065_parent_idx ON stress.entity_0065(parent_id);

CREATE INDEX entity_0065_owner_idx ON stress.entity_0065(owner_id);

CREATE TABLE stress.entity_0066 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0022(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0066_parent_idx ON stress.entity_0066(parent_id);

CREATE TABLE stress.entity_0067 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0022(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0067_parent_idx ON stress.entity_0067(parent_id);

CREATE TABLE stress.entity_0068 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0023(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0068_parent_idx ON stress.entity_0068(parent_id);

CREATE TABLE stress.entity_0069 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0023(id),
  owner_id BIGINT REFERENCES stress.entity_0062(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0069_parent_idx ON stress.entity_0069(parent_id);

CREATE INDEX entity_0069_owner_idx ON stress.entity_0069(owner_id);

CREATE TABLE stress.entity_0070 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0023(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0070_parent_idx ON stress.entity_0070(parent_id);

CREATE TABLE stress.entity_0071 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0024(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0071_parent_idx ON stress.entity_0071(parent_id);

CREATE TABLE stress.entity_0072 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0024(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0072_parent_idx ON stress.entity_0072(parent_id);

CREATE TABLE stress.entity_0073 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0024(id),
  owner_id BIGINT REFERENCES stress.entity_0066(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0073_parent_idx ON stress.entity_0073(parent_id);

CREATE INDEX entity_0073_owner_idx ON stress.entity_0073(owner_id);

CREATE TABLE stress.entity_0074 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0025(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0074_parent_idx ON stress.entity_0074(parent_id);

CREATE TABLE stress.entity_0075 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0025(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0075_parent_idx ON stress.entity_0075(parent_id);

CREATE TABLE stress.entity_0076 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0025(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0076_parent_idx ON stress.entity_0076(parent_id);

CREATE TABLE stress.entity_0077 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0026(id),
  owner_id BIGINT REFERENCES stress.entity_0070(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0077_parent_idx ON stress.entity_0077(parent_id);

CREATE INDEX entity_0077_owner_idx ON stress.entity_0077(owner_id);

CREATE TABLE stress.entity_0078 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0026(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0078_parent_idx ON stress.entity_0078(parent_id);

CREATE TABLE stress.entity_0079 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0026(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0079_parent_idx ON stress.entity_0079(parent_id);

CREATE TABLE stress.entity_0080 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0027(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0080_parent_idx ON stress.entity_0080(parent_id);

CREATE TABLE stress.entity_0081 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0027(id),
  owner_id BIGINT REFERENCES stress.entity_0074(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0081_parent_idx ON stress.entity_0081(parent_id);

CREATE INDEX entity_0081_owner_idx ON stress.entity_0081(owner_id);

CREATE TABLE stress.entity_0082 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0027(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0082_parent_idx ON stress.entity_0082(parent_id);

CREATE TABLE stress.entity_0083 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0028(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0083_parent_idx ON stress.entity_0083(parent_id);

CREATE TABLE stress.entity_0084 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0028(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0084_parent_idx ON stress.entity_0084(parent_id);

CREATE TABLE stress.entity_0085 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0028(id),
  owner_id BIGINT REFERENCES stress.entity_0078(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0085_parent_idx ON stress.entity_0085(parent_id);

CREATE INDEX entity_0085_owner_idx ON stress.entity_0085(owner_id);

CREATE TABLE stress.entity_0086 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0029(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0086_parent_idx ON stress.entity_0086(parent_id);

CREATE TABLE stress.entity_0087 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0029(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0087_parent_idx ON stress.entity_0087(parent_id);

CREATE TABLE stress.entity_0088 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0029(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0088_parent_idx ON stress.entity_0088(parent_id);

CREATE TABLE stress.entity_0089 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0030(id),
  owner_id BIGINT REFERENCES stress.entity_0082(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0089_parent_idx ON stress.entity_0089(parent_id);

CREATE INDEX entity_0089_owner_idx ON stress.entity_0089(owner_id);

CREATE TABLE stress.entity_0090 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0030(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0090_parent_idx ON stress.entity_0090(parent_id);

CREATE TABLE stress.entity_0091 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0030(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0091_parent_idx ON stress.entity_0091(parent_id);

CREATE TABLE stress.entity_0092 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0031(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0092_parent_idx ON stress.entity_0092(parent_id);

CREATE TABLE stress.entity_0093 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0031(id),
  owner_id BIGINT REFERENCES stress.entity_0086(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0093_parent_idx ON stress.entity_0093(parent_id);

CREATE INDEX entity_0093_owner_idx ON stress.entity_0093(owner_id);

CREATE TABLE stress.entity_0094 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0031(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0094_parent_idx ON stress.entity_0094(parent_id);

CREATE TABLE stress.entity_0095 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0032(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0095_parent_idx ON stress.entity_0095(parent_id);

CREATE TABLE stress.entity_0096 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0032(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0096_parent_idx ON stress.entity_0096(parent_id);

CREATE TABLE stress.entity_0097 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0032(id),
  owner_id BIGINT REFERENCES stress.entity_0090(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0097_parent_idx ON stress.entity_0097(parent_id);

CREATE INDEX entity_0097_owner_idx ON stress.entity_0097(owner_id);

CREATE TABLE stress.entity_0098 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0033(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0098_parent_idx ON stress.entity_0098(parent_id);

CREATE TABLE stress.entity_0099 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0033(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0099_parent_idx ON stress.entity_0099(parent_id);

CREATE TABLE stress.entity_0100 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0033(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0100_parent_idx ON stress.entity_0100(parent_id);

CREATE TABLE stress.entity_0101 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0034(id),
  owner_id BIGINT REFERENCES stress.entity_0094(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0101_parent_idx ON stress.entity_0101(parent_id);

CREATE INDEX entity_0101_owner_idx ON stress.entity_0101(owner_id);

CREATE TABLE stress.entity_0102 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0034(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0102_parent_idx ON stress.entity_0102(parent_id);

CREATE TABLE stress.entity_0103 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0034(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0103_parent_idx ON stress.entity_0103(parent_id);

CREATE TABLE stress.entity_0104 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0035(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0104_parent_idx ON stress.entity_0104(parent_id);

CREATE TABLE stress.entity_0105 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0035(id),
  owner_id BIGINT REFERENCES stress.entity_0098(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0105_parent_idx ON stress.entity_0105(parent_id);

CREATE INDEX entity_0105_owner_idx ON stress.entity_0105(owner_id);

CREATE TABLE stress.entity_0106 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0035(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0106_parent_idx ON stress.entity_0106(parent_id);

CREATE TABLE stress.entity_0107 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0036(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0107_parent_idx ON stress.entity_0107(parent_id);

CREATE TABLE stress.entity_0108 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0036(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0108_parent_idx ON stress.entity_0108(parent_id);

CREATE TABLE stress.entity_0109 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0036(id),
  owner_id BIGINT REFERENCES stress.entity_0102(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0109_parent_idx ON stress.entity_0109(parent_id);

CREATE INDEX entity_0109_owner_idx ON stress.entity_0109(owner_id);

CREATE TABLE stress.entity_0110 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0037(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0110_parent_idx ON stress.entity_0110(parent_id);

CREATE TABLE stress.entity_0111 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0037(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0111_parent_idx ON stress.entity_0111(parent_id);

CREATE TABLE stress.entity_0112 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0037(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0112_parent_idx ON stress.entity_0112(parent_id);

CREATE TABLE stress.entity_0113 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0038(id),
  owner_id BIGINT REFERENCES stress.entity_0106(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0113_parent_idx ON stress.entity_0113(parent_id);

CREATE INDEX entity_0113_owner_idx ON stress.entity_0113(owner_id);

CREATE TABLE stress.entity_0114 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0038(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0114_parent_idx ON stress.entity_0114(parent_id);

CREATE TABLE stress.entity_0115 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0038(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0115_parent_idx ON stress.entity_0115(parent_id);

CREATE TABLE stress.entity_0116 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0039(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0116_parent_idx ON stress.entity_0116(parent_id);

CREATE TABLE stress.entity_0117 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0039(id),
  owner_id BIGINT REFERENCES stress.entity_0110(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0117_parent_idx ON stress.entity_0117(parent_id);

CREATE INDEX entity_0117_owner_idx ON stress.entity_0117(owner_id);

CREATE TABLE stress.entity_0118 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0039(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0118_parent_idx ON stress.entity_0118(parent_id);

CREATE TABLE stress.entity_0119 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0040(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0119_parent_idx ON stress.entity_0119(parent_id);

CREATE TABLE stress.entity_0120 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0040(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0120_parent_idx ON stress.entity_0120(parent_id);

CREATE TABLE stress.entity_0121 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0040(id),
  owner_id BIGINT REFERENCES stress.entity_0114(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0121_parent_idx ON stress.entity_0121(parent_id);

CREATE INDEX entity_0121_owner_idx ON stress.entity_0121(owner_id);

CREATE TABLE stress.entity_0122 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0041(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0122_parent_idx ON stress.entity_0122(parent_id);

CREATE TABLE stress.entity_0123 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0041(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0123_parent_idx ON stress.entity_0123(parent_id);

CREATE TABLE stress.entity_0124 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0041(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0124_parent_idx ON stress.entity_0124(parent_id);

CREATE TABLE stress.entity_0125 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0042(id),
  owner_id BIGINT REFERENCES stress.entity_0118(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0125_parent_idx ON stress.entity_0125(parent_id);

CREATE INDEX entity_0125_owner_idx ON stress.entity_0125(owner_id);

CREATE TABLE stress.entity_0126 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0042(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0126_parent_idx ON stress.entity_0126(parent_id);

CREATE TABLE stress.entity_0127 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0042(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0127_parent_idx ON stress.entity_0127(parent_id);

CREATE TABLE stress.entity_0128 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0043(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0128_parent_idx ON stress.entity_0128(parent_id);

CREATE TABLE stress.entity_0129 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0043(id),
  owner_id BIGINT REFERENCES stress.entity_0122(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0129_parent_idx ON stress.entity_0129(parent_id);

CREATE INDEX entity_0129_owner_idx ON stress.entity_0129(owner_id);

CREATE TABLE stress.entity_0130 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0043(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0130_parent_idx ON stress.entity_0130(parent_id);

CREATE TABLE stress.entity_0131 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0044(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0131_parent_idx ON stress.entity_0131(parent_id);

CREATE TABLE stress.entity_0132 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0044(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0132_parent_idx ON stress.entity_0132(parent_id);

CREATE TABLE stress.entity_0133 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0044(id),
  owner_id BIGINT REFERENCES stress.entity_0126(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0133_parent_idx ON stress.entity_0133(parent_id);

CREATE INDEX entity_0133_owner_idx ON stress.entity_0133(owner_id);

CREATE TABLE stress.entity_0134 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0045(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0134_parent_idx ON stress.entity_0134(parent_id);

CREATE TABLE stress.entity_0135 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0045(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0135_parent_idx ON stress.entity_0135(parent_id);

CREATE TABLE stress.entity_0136 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0045(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0136_parent_idx ON stress.entity_0136(parent_id);

CREATE TABLE stress.entity_0137 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0046(id),
  owner_id BIGINT REFERENCES stress.entity_0130(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0137_parent_idx ON stress.entity_0137(parent_id);

CREATE INDEX entity_0137_owner_idx ON stress.entity_0137(owner_id);

CREATE TABLE stress.entity_0138 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0046(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0138_parent_idx ON stress.entity_0138(parent_id);

CREATE TABLE stress.entity_0139 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0046(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0139_parent_idx ON stress.entity_0139(parent_id);

CREATE TABLE stress.entity_0140 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0047(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0140_parent_idx ON stress.entity_0140(parent_id);

CREATE TABLE stress.entity_0141 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0047(id),
  owner_id BIGINT REFERENCES stress.entity_0134(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0141_parent_idx ON stress.entity_0141(parent_id);

CREATE INDEX entity_0141_owner_idx ON stress.entity_0141(owner_id);

CREATE TABLE stress.entity_0142 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0047(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0142_parent_idx ON stress.entity_0142(parent_id);

CREATE TABLE stress.entity_0143 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0048(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0143_parent_idx ON stress.entity_0143(parent_id);

CREATE TABLE stress.entity_0144 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0048(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0144_parent_idx ON stress.entity_0144(parent_id);

CREATE TABLE stress.entity_0145 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0048(id),
  owner_id BIGINT REFERENCES stress.entity_0138(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0145_parent_idx ON stress.entity_0145(parent_id);

CREATE INDEX entity_0145_owner_idx ON stress.entity_0145(owner_id);

CREATE TABLE stress.entity_0146 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0049(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0146_parent_idx ON stress.entity_0146(parent_id);

CREATE TABLE stress.entity_0147 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0049(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0147_parent_idx ON stress.entity_0147(parent_id);

CREATE TABLE stress.entity_0148 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0049(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0148_parent_idx ON stress.entity_0148(parent_id);

CREATE TABLE stress.entity_0149 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0050(id),
  owner_id BIGINT REFERENCES stress.entity_0142(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0149_parent_idx ON stress.entity_0149(parent_id);

CREATE INDEX entity_0149_owner_idx ON stress.entity_0149(owner_id);

CREATE TABLE stress.entity_0150 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0050(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0150_parent_idx ON stress.entity_0150(parent_id);

CREATE TABLE stress.entity_0151 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0050(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0151_parent_idx ON stress.entity_0151(parent_id);

CREATE TABLE stress.entity_0152 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0051(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0152_parent_idx ON stress.entity_0152(parent_id);

CREATE TABLE stress.entity_0153 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0051(id),
  owner_id BIGINT REFERENCES stress.entity_0146(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0153_parent_idx ON stress.entity_0153(parent_id);

CREATE INDEX entity_0153_owner_idx ON stress.entity_0153(owner_id);

CREATE TABLE stress.entity_0154 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0051(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0154_parent_idx ON stress.entity_0154(parent_id);

CREATE TABLE stress.entity_0155 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0052(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0155_parent_idx ON stress.entity_0155(parent_id);

CREATE TABLE stress.entity_0156 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0052(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0156_parent_idx ON stress.entity_0156(parent_id);

CREATE TABLE stress.entity_0157 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0052(id),
  owner_id BIGINT REFERENCES stress.entity_0150(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0157_parent_idx ON stress.entity_0157(parent_id);

CREATE INDEX entity_0157_owner_idx ON stress.entity_0157(owner_id);

CREATE TABLE stress.entity_0158 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0053(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0158_parent_idx ON stress.entity_0158(parent_id);

CREATE TABLE stress.entity_0159 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0053(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0159_parent_idx ON stress.entity_0159(parent_id);

CREATE TABLE stress.entity_0160 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0053(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0160_parent_idx ON stress.entity_0160(parent_id);

CREATE TABLE stress.entity_0161 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0054(id),
  owner_id BIGINT REFERENCES stress.entity_0154(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0161_parent_idx ON stress.entity_0161(parent_id);

CREATE INDEX entity_0161_owner_idx ON stress.entity_0161(owner_id);

CREATE TABLE stress.entity_0162 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0054(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0162_parent_idx ON stress.entity_0162(parent_id);

CREATE TABLE stress.entity_0163 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0054(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0163_parent_idx ON stress.entity_0163(parent_id);

CREATE TABLE stress.entity_0164 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0055(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0164_parent_idx ON stress.entity_0164(parent_id);

CREATE TABLE stress.entity_0165 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0055(id),
  owner_id BIGINT REFERENCES stress.entity_0158(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0165_parent_idx ON stress.entity_0165(parent_id);

CREATE INDEX entity_0165_owner_idx ON stress.entity_0165(owner_id);

CREATE TABLE stress.entity_0166 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0055(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0166_parent_idx ON stress.entity_0166(parent_id);

CREATE TABLE stress.entity_0167 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0056(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0167_parent_idx ON stress.entity_0167(parent_id);

CREATE TABLE stress.entity_0168 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0056(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0168_parent_idx ON stress.entity_0168(parent_id);

CREATE TABLE stress.entity_0169 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0056(id),
  owner_id BIGINT REFERENCES stress.entity_0162(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0169_parent_idx ON stress.entity_0169(parent_id);

CREATE INDEX entity_0169_owner_idx ON stress.entity_0169(owner_id);

CREATE TABLE stress.entity_0170 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0057(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0170_parent_idx ON stress.entity_0170(parent_id);

CREATE TABLE stress.entity_0171 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0057(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0171_parent_idx ON stress.entity_0171(parent_id);

CREATE TABLE stress.entity_0172 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0057(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0172_parent_idx ON stress.entity_0172(parent_id);

CREATE TABLE stress.entity_0173 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0058(id),
  owner_id BIGINT REFERENCES stress.entity_0166(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0173_parent_idx ON stress.entity_0173(parent_id);

CREATE INDEX entity_0173_owner_idx ON stress.entity_0173(owner_id);

CREATE TABLE stress.entity_0174 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0058(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0174_parent_idx ON stress.entity_0174(parent_id);

CREATE TABLE stress.entity_0175 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0058(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0175_parent_idx ON stress.entity_0175(parent_id);

CREATE TABLE stress.entity_0176 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0059(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0176_parent_idx ON stress.entity_0176(parent_id);

CREATE TABLE stress.entity_0177 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0059(id),
  owner_id BIGINT REFERENCES stress.entity_0170(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0177_parent_idx ON stress.entity_0177(parent_id);

CREATE INDEX entity_0177_owner_idx ON stress.entity_0177(owner_id);

CREATE TABLE stress.entity_0178 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0059(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0178_parent_idx ON stress.entity_0178(parent_id);

CREATE TABLE stress.entity_0179 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0060(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0179_parent_idx ON stress.entity_0179(parent_id);

CREATE TABLE stress.entity_0180 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0060(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0180_parent_idx ON stress.entity_0180(parent_id);

CREATE TABLE stress.entity_0181 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0060(id),
  owner_id BIGINT REFERENCES stress.entity_0174(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0181_parent_idx ON stress.entity_0181(parent_id);

CREATE INDEX entity_0181_owner_idx ON stress.entity_0181(owner_id);

CREATE TABLE stress.entity_0182 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0061(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0182_parent_idx ON stress.entity_0182(parent_id);

CREATE TABLE stress.entity_0183 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0061(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0183_parent_idx ON stress.entity_0183(parent_id);

CREATE TABLE stress.entity_0184 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0061(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0184_parent_idx ON stress.entity_0184(parent_id);

CREATE TABLE stress.entity_0185 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0062(id),
  owner_id BIGINT REFERENCES stress.entity_0178(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0185_parent_idx ON stress.entity_0185(parent_id);

CREATE INDEX entity_0185_owner_idx ON stress.entity_0185(owner_id);

CREATE TABLE stress.entity_0186 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0062(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0186_parent_idx ON stress.entity_0186(parent_id);

CREATE TABLE stress.entity_0187 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0062(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0187_parent_idx ON stress.entity_0187(parent_id);

CREATE TABLE stress.entity_0188 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0063(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0188_parent_idx ON stress.entity_0188(parent_id);

CREATE TABLE stress.entity_0189 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0063(id),
  owner_id BIGINT REFERENCES stress.entity_0182(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0189_parent_idx ON stress.entity_0189(parent_id);

CREATE INDEX entity_0189_owner_idx ON stress.entity_0189(owner_id);

CREATE TABLE stress.entity_0190 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0063(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0190_parent_idx ON stress.entity_0190(parent_id);

CREATE TABLE stress.entity_0191 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0064(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0191_parent_idx ON stress.entity_0191(parent_id);

CREATE TABLE stress.entity_0192 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0064(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0192_parent_idx ON stress.entity_0192(parent_id);

CREATE TABLE stress.entity_0193 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0064(id),
  owner_id BIGINT REFERENCES stress.entity_0186(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0193_parent_idx ON stress.entity_0193(parent_id);

CREATE INDEX entity_0193_owner_idx ON stress.entity_0193(owner_id);

CREATE TABLE stress.entity_0194 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0065(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0194_parent_idx ON stress.entity_0194(parent_id);

CREATE TABLE stress.entity_0195 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0065(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0195_parent_idx ON stress.entity_0195(parent_id);

CREATE TABLE stress.entity_0196 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0065(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0196_parent_idx ON stress.entity_0196(parent_id);

CREATE TABLE stress.entity_0197 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0066(id),
  owner_id BIGINT REFERENCES stress.entity_0190(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0197_parent_idx ON stress.entity_0197(parent_id);

CREATE INDEX entity_0197_owner_idx ON stress.entity_0197(owner_id);

CREATE TABLE stress.entity_0198 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0066(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0198_parent_idx ON stress.entity_0198(parent_id);

CREATE TABLE stress.entity_0199 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0066(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0199_parent_idx ON stress.entity_0199(parent_id);

CREATE TABLE stress.entity_0200 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0067(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0200_parent_idx ON stress.entity_0200(parent_id);

CREATE TABLE stress.entity_0201 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0067(id),
  owner_id BIGINT REFERENCES stress.entity_0194(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0201_parent_idx ON stress.entity_0201(parent_id);

CREATE INDEX entity_0201_owner_idx ON stress.entity_0201(owner_id);

CREATE TABLE stress.entity_0202 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0067(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0202_parent_idx ON stress.entity_0202(parent_id);

CREATE TABLE stress.entity_0203 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0068(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0203_parent_idx ON stress.entity_0203(parent_id);

CREATE TABLE stress.entity_0204 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0068(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0204_parent_idx ON stress.entity_0204(parent_id);

CREATE TABLE stress.entity_0205 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0068(id),
  owner_id BIGINT REFERENCES stress.entity_0198(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0205_parent_idx ON stress.entity_0205(parent_id);

CREATE INDEX entity_0205_owner_idx ON stress.entity_0205(owner_id);

CREATE TABLE stress.entity_0206 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0069(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0206_parent_idx ON stress.entity_0206(parent_id);

CREATE TABLE stress.entity_0207 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0069(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0207_parent_idx ON stress.entity_0207(parent_id);

CREATE TABLE stress.entity_0208 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0069(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0208_parent_idx ON stress.entity_0208(parent_id);

CREATE TABLE stress.entity_0209 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0070(id),
  owner_id BIGINT REFERENCES stress.entity_0202(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0209_parent_idx ON stress.entity_0209(parent_id);

CREATE INDEX entity_0209_owner_idx ON stress.entity_0209(owner_id);

CREATE TABLE stress.entity_0210 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0070(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0210_parent_idx ON stress.entity_0210(parent_id);

CREATE TABLE stress.entity_0211 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0070(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0211_parent_idx ON stress.entity_0211(parent_id);

CREATE TABLE stress.entity_0212 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0071(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0212_parent_idx ON stress.entity_0212(parent_id);

CREATE TABLE stress.entity_0213 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0071(id),
  owner_id BIGINT REFERENCES stress.entity_0206(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0213_parent_idx ON stress.entity_0213(parent_id);

CREATE INDEX entity_0213_owner_idx ON stress.entity_0213(owner_id);

CREATE TABLE stress.entity_0214 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0071(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0214_parent_idx ON stress.entity_0214(parent_id);

CREATE TABLE stress.entity_0215 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0072(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0215_parent_idx ON stress.entity_0215(parent_id);

CREATE TABLE stress.entity_0216 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0072(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0216_parent_idx ON stress.entity_0216(parent_id);

CREATE TABLE stress.entity_0217 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0072(id),
  owner_id BIGINT REFERENCES stress.entity_0210(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0217_parent_idx ON stress.entity_0217(parent_id);

CREATE INDEX entity_0217_owner_idx ON stress.entity_0217(owner_id);

CREATE TABLE stress.entity_0218 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0073(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0218_parent_idx ON stress.entity_0218(parent_id);

CREATE TABLE stress.entity_0219 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0073(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0219_parent_idx ON stress.entity_0219(parent_id);

CREATE TABLE stress.entity_0220 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0073(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0220_parent_idx ON stress.entity_0220(parent_id);

CREATE TABLE stress.entity_0221 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0074(id),
  owner_id BIGINT REFERENCES stress.entity_0214(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0221_parent_idx ON stress.entity_0221(parent_id);

CREATE INDEX entity_0221_owner_idx ON stress.entity_0221(owner_id);

CREATE TABLE stress.entity_0222 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0074(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0222_parent_idx ON stress.entity_0222(parent_id);

CREATE TABLE stress.entity_0223 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0074(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0223_parent_idx ON stress.entity_0223(parent_id);

CREATE TABLE stress.entity_0224 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0075(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0224_parent_idx ON stress.entity_0224(parent_id);

CREATE TABLE stress.entity_0225 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0075(id),
  owner_id BIGINT REFERENCES stress.entity_0218(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0225_parent_idx ON stress.entity_0225(parent_id);

CREATE INDEX entity_0225_owner_idx ON stress.entity_0225(owner_id);

CREATE TABLE stress.entity_0226 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0075(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0226_parent_idx ON stress.entity_0226(parent_id);

CREATE TABLE stress.entity_0227 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0076(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0227_parent_idx ON stress.entity_0227(parent_id);

CREATE TABLE stress.entity_0228 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0076(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0228_parent_idx ON stress.entity_0228(parent_id);

CREATE TABLE stress.entity_0229 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0076(id),
  owner_id BIGINT REFERENCES stress.entity_0222(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0229_parent_idx ON stress.entity_0229(parent_id);

CREATE INDEX entity_0229_owner_idx ON stress.entity_0229(owner_id);

CREATE TABLE stress.entity_0230 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0077(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0230_parent_idx ON stress.entity_0230(parent_id);

CREATE TABLE stress.entity_0231 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0077(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0231_parent_idx ON stress.entity_0231(parent_id);

CREATE TABLE stress.entity_0232 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0077(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0232_parent_idx ON stress.entity_0232(parent_id);

CREATE TABLE stress.entity_0233 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0078(id),
  owner_id BIGINT REFERENCES stress.entity_0226(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0233_parent_idx ON stress.entity_0233(parent_id);

CREATE INDEX entity_0233_owner_idx ON stress.entity_0233(owner_id);

CREATE TABLE stress.entity_0234 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0078(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0234_parent_idx ON stress.entity_0234(parent_id);

CREATE TABLE stress.entity_0235 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0078(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0235_parent_idx ON stress.entity_0235(parent_id);

CREATE TABLE stress.entity_0236 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0079(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0236_parent_idx ON stress.entity_0236(parent_id);

CREATE TABLE stress.entity_0237 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0079(id),
  owner_id BIGINT REFERENCES stress.entity_0230(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0237_parent_idx ON stress.entity_0237(parent_id);

CREATE INDEX entity_0237_owner_idx ON stress.entity_0237(owner_id);

CREATE TABLE stress.entity_0238 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0079(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0238_parent_idx ON stress.entity_0238(parent_id);

CREATE TABLE stress.entity_0239 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0080(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0239_parent_idx ON stress.entity_0239(parent_id);

CREATE TABLE stress.entity_0240 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0080(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0240_parent_idx ON stress.entity_0240(parent_id);

CREATE TABLE stress.entity_0241 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0080(id),
  owner_id BIGINT REFERENCES stress.entity_0234(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0241_parent_idx ON stress.entity_0241(parent_id);

CREATE INDEX entity_0241_owner_idx ON stress.entity_0241(owner_id);

CREATE TABLE stress.entity_0242 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0081(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0242_parent_idx ON stress.entity_0242(parent_id);

CREATE TABLE stress.entity_0243 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0081(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0243_parent_idx ON stress.entity_0243(parent_id);

CREATE TABLE stress.entity_0244 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0081(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0244_parent_idx ON stress.entity_0244(parent_id);

CREATE TABLE stress.entity_0245 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0082(id),
  owner_id BIGINT REFERENCES stress.entity_0238(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0245_parent_idx ON stress.entity_0245(parent_id);

CREATE INDEX entity_0245_owner_idx ON stress.entity_0245(owner_id);

CREATE TABLE stress.entity_0246 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0082(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0246_parent_idx ON stress.entity_0246(parent_id);

CREATE TABLE stress.entity_0247 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0082(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0247_parent_idx ON stress.entity_0247(parent_id);

CREATE TABLE stress.entity_0248 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0083(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0248_parent_idx ON stress.entity_0248(parent_id);

CREATE TABLE stress.entity_0249 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0083(id),
  owner_id BIGINT REFERENCES stress.entity_0242(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0249_parent_idx ON stress.entity_0249(parent_id);

CREATE INDEX entity_0249_owner_idx ON stress.entity_0249(owner_id);

CREATE TABLE stress.entity_0250 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0083(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0250_parent_idx ON stress.entity_0250(parent_id);

CREATE TABLE stress.entity_0251 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0084(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0251_parent_idx ON stress.entity_0251(parent_id);

CREATE TABLE stress.entity_0252 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0084(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0252_parent_idx ON stress.entity_0252(parent_id);

CREATE TABLE stress.entity_0253 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0084(id),
  owner_id BIGINT REFERENCES stress.entity_0246(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0253_parent_idx ON stress.entity_0253(parent_id);

CREATE INDEX entity_0253_owner_idx ON stress.entity_0253(owner_id);

CREATE TABLE stress.entity_0254 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0085(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0254_parent_idx ON stress.entity_0254(parent_id);

CREATE TABLE stress.entity_0255 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0085(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0255_parent_idx ON stress.entity_0255(parent_id);

CREATE TABLE stress.entity_0256 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0085(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0256_parent_idx ON stress.entity_0256(parent_id);

CREATE TABLE stress.entity_0257 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0086(id),
  owner_id BIGINT REFERENCES stress.entity_0250(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0257_parent_idx ON stress.entity_0257(parent_id);

CREATE INDEX entity_0257_owner_idx ON stress.entity_0257(owner_id);

CREATE TABLE stress.entity_0258 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0086(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0258_parent_idx ON stress.entity_0258(parent_id);

CREATE TABLE stress.entity_0259 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0086(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0259_parent_idx ON stress.entity_0259(parent_id);

CREATE TABLE stress.entity_0260 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0087(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0260_parent_idx ON stress.entity_0260(parent_id);

CREATE TABLE stress.entity_0261 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0087(id),
  owner_id BIGINT REFERENCES stress.entity_0254(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0261_parent_idx ON stress.entity_0261(parent_id);

CREATE INDEX entity_0261_owner_idx ON stress.entity_0261(owner_id);

CREATE TABLE stress.entity_0262 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0087(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0262_parent_idx ON stress.entity_0262(parent_id);

CREATE TABLE stress.entity_0263 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0088(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0263_parent_idx ON stress.entity_0263(parent_id);

CREATE TABLE stress.entity_0264 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0088(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0264_parent_idx ON stress.entity_0264(parent_id);

CREATE TABLE stress.entity_0265 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0088(id),
  owner_id BIGINT REFERENCES stress.entity_0258(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0265_parent_idx ON stress.entity_0265(parent_id);

CREATE INDEX entity_0265_owner_idx ON stress.entity_0265(owner_id);

CREATE TABLE stress.entity_0266 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0089(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0266_parent_idx ON stress.entity_0266(parent_id);

CREATE TABLE stress.entity_0267 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0089(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0267_parent_idx ON stress.entity_0267(parent_id);

CREATE TABLE stress.entity_0268 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0089(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0268_parent_idx ON stress.entity_0268(parent_id);

CREATE TABLE stress.entity_0269 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0090(id),
  owner_id BIGINT REFERENCES stress.entity_0262(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0269_parent_idx ON stress.entity_0269(parent_id);

CREATE INDEX entity_0269_owner_idx ON stress.entity_0269(owner_id);

CREATE TABLE stress.entity_0270 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0090(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0270_parent_idx ON stress.entity_0270(parent_id);

CREATE TABLE stress.entity_0271 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0090(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0271_parent_idx ON stress.entity_0271(parent_id);

CREATE TABLE stress.entity_0272 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0091(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0272_parent_idx ON stress.entity_0272(parent_id);

CREATE TABLE stress.entity_0273 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0091(id),
  owner_id BIGINT REFERENCES stress.entity_0266(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0273_parent_idx ON stress.entity_0273(parent_id);

CREATE INDEX entity_0273_owner_idx ON stress.entity_0273(owner_id);

CREATE TABLE stress.entity_0274 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0091(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0274_parent_idx ON stress.entity_0274(parent_id);

CREATE TABLE stress.entity_0275 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0092(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0275_parent_idx ON stress.entity_0275(parent_id);

CREATE TABLE stress.entity_0276 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0092(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0276_parent_idx ON stress.entity_0276(parent_id);

CREATE TABLE stress.entity_0277 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0092(id),
  owner_id BIGINT REFERENCES stress.entity_0270(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0277_parent_idx ON stress.entity_0277(parent_id);

CREATE INDEX entity_0277_owner_idx ON stress.entity_0277(owner_id);

CREATE TABLE stress.entity_0278 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0093(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0278_parent_idx ON stress.entity_0278(parent_id);

CREATE TABLE stress.entity_0279 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0093(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0279_parent_idx ON stress.entity_0279(parent_id);

CREATE TABLE stress.entity_0280 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0093(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0280_parent_idx ON stress.entity_0280(parent_id);

CREATE TABLE stress.entity_0281 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0094(id),
  owner_id BIGINT REFERENCES stress.entity_0274(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0281_parent_idx ON stress.entity_0281(parent_id);

CREATE INDEX entity_0281_owner_idx ON stress.entity_0281(owner_id);

CREATE TABLE stress.entity_0282 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0094(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0282_parent_idx ON stress.entity_0282(parent_id);

CREATE TABLE stress.entity_0283 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0094(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0283_parent_idx ON stress.entity_0283(parent_id);

CREATE TABLE stress.entity_0284 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0095(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0284_parent_idx ON stress.entity_0284(parent_id);

CREATE TABLE stress.entity_0285 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0095(id),
  owner_id BIGINT REFERENCES stress.entity_0278(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0285_parent_idx ON stress.entity_0285(parent_id);

CREATE INDEX entity_0285_owner_idx ON stress.entity_0285(owner_id);

CREATE TABLE stress.entity_0286 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0095(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0286_parent_idx ON stress.entity_0286(parent_id);

CREATE TABLE stress.entity_0287 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0096(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0287_parent_idx ON stress.entity_0287(parent_id);

CREATE TABLE stress.entity_0288 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0096(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0288_parent_idx ON stress.entity_0288(parent_id);

CREATE TABLE stress.entity_0289 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0096(id),
  owner_id BIGINT REFERENCES stress.entity_0282(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0289_parent_idx ON stress.entity_0289(parent_id);

CREATE INDEX entity_0289_owner_idx ON stress.entity_0289(owner_id);

CREATE TABLE stress.entity_0290 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0097(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0290_parent_idx ON stress.entity_0290(parent_id);

CREATE TABLE stress.entity_0291 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0097(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0291_parent_idx ON stress.entity_0291(parent_id);

CREATE TABLE stress.entity_0292 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0097(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0292_parent_idx ON stress.entity_0292(parent_id);

CREATE TABLE stress.entity_0293 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0098(id),
  owner_id BIGINT REFERENCES stress.entity_0286(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0293_parent_idx ON stress.entity_0293(parent_id);

CREATE INDEX entity_0293_owner_idx ON stress.entity_0293(owner_id);

CREATE TABLE stress.entity_0294 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0098(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0294_parent_idx ON stress.entity_0294(parent_id);

CREATE TABLE stress.entity_0295 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0098(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0295_parent_idx ON stress.entity_0295(parent_id);

CREATE TABLE stress.entity_0296 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0099(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0296_parent_idx ON stress.entity_0296(parent_id);

CREATE TABLE stress.entity_0297 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0099(id),
  owner_id BIGINT REFERENCES stress.entity_0290(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0297_parent_idx ON stress.entity_0297(parent_id);

CREATE INDEX entity_0297_owner_idx ON stress.entity_0297(owner_id);

CREATE TABLE stress.entity_0298 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0099(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0298_parent_idx ON stress.entity_0298(parent_id);

CREATE TABLE stress.entity_0299 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0100(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0299_parent_idx ON stress.entity_0299(parent_id);

CREATE TABLE stress.entity_0300 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0100(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0300_parent_idx ON stress.entity_0300(parent_id);

CREATE TABLE stress.entity_0301 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0100(id),
  owner_id BIGINT REFERENCES stress.entity_0294(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0301_parent_idx ON stress.entity_0301(parent_id);

CREATE INDEX entity_0301_owner_idx ON stress.entity_0301(owner_id);

CREATE TABLE stress.entity_0302 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0101(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0302_parent_idx ON stress.entity_0302(parent_id);

CREATE TABLE stress.entity_0303 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0101(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0303_parent_idx ON stress.entity_0303(parent_id);

CREATE TABLE stress.entity_0304 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0101(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0304_parent_idx ON stress.entity_0304(parent_id);

CREATE TABLE stress.entity_0305 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0102(id),
  owner_id BIGINT REFERENCES stress.entity_0298(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0305_parent_idx ON stress.entity_0305(parent_id);

CREATE INDEX entity_0305_owner_idx ON stress.entity_0305(owner_id);

CREATE TABLE stress.entity_0306 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0102(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0306_parent_idx ON stress.entity_0306(parent_id);

CREATE TABLE stress.entity_0307 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0102(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0307_parent_idx ON stress.entity_0307(parent_id);

CREATE TABLE stress.entity_0308 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0103(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0308_parent_idx ON stress.entity_0308(parent_id);

CREATE TABLE stress.entity_0309 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0103(id),
  owner_id BIGINT REFERENCES stress.entity_0302(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0309_parent_idx ON stress.entity_0309(parent_id);

CREATE INDEX entity_0309_owner_idx ON stress.entity_0309(owner_id);

CREATE TABLE stress.entity_0310 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0103(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0310_parent_idx ON stress.entity_0310(parent_id);

CREATE TABLE stress.entity_0311 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0104(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0311_parent_idx ON stress.entity_0311(parent_id);

CREATE TABLE stress.entity_0312 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0104(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0312_parent_idx ON stress.entity_0312(parent_id);

CREATE TABLE stress.entity_0313 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0104(id),
  owner_id BIGINT REFERENCES stress.entity_0306(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0313_parent_idx ON stress.entity_0313(parent_id);

CREATE INDEX entity_0313_owner_idx ON stress.entity_0313(owner_id);

CREATE TABLE stress.entity_0314 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0105(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0314_parent_idx ON stress.entity_0314(parent_id);

CREATE TABLE stress.entity_0315 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0105(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0315_parent_idx ON stress.entity_0315(parent_id);

CREATE TABLE stress.entity_0316 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0105(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0316_parent_idx ON stress.entity_0316(parent_id);

CREATE TABLE stress.entity_0317 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0106(id),
  owner_id BIGINT REFERENCES stress.entity_0310(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0317_parent_idx ON stress.entity_0317(parent_id);

CREATE INDEX entity_0317_owner_idx ON stress.entity_0317(owner_id);

CREATE TABLE stress.entity_0318 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0106(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0318_parent_idx ON stress.entity_0318(parent_id);

CREATE TABLE stress.entity_0319 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0106(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0319_parent_idx ON stress.entity_0319(parent_id);

CREATE TABLE stress.entity_0320 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0107(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0320_parent_idx ON stress.entity_0320(parent_id);

CREATE TABLE stress.entity_0321 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0107(id),
  owner_id BIGINT REFERENCES stress.entity_0314(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0321_parent_idx ON stress.entity_0321(parent_id);

CREATE INDEX entity_0321_owner_idx ON stress.entity_0321(owner_id);

CREATE TABLE stress.entity_0322 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0107(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0322_parent_idx ON stress.entity_0322(parent_id);

CREATE TABLE stress.entity_0323 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0108(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0323_parent_idx ON stress.entity_0323(parent_id);

CREATE TABLE stress.entity_0324 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0108(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0324_parent_idx ON stress.entity_0324(parent_id);

CREATE TABLE stress.entity_0325 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0108(id),
  owner_id BIGINT REFERENCES stress.entity_0318(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0325_parent_idx ON stress.entity_0325(parent_id);

CREATE INDEX entity_0325_owner_idx ON stress.entity_0325(owner_id);

CREATE TABLE stress.entity_0326 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0109(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0326_parent_idx ON stress.entity_0326(parent_id);

CREATE TABLE stress.entity_0327 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0109(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0327_parent_idx ON stress.entity_0327(parent_id);

CREATE TABLE stress.entity_0328 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0109(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0328_parent_idx ON stress.entity_0328(parent_id);

CREATE TABLE stress.entity_0329 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0110(id),
  owner_id BIGINT REFERENCES stress.entity_0322(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0329_parent_idx ON stress.entity_0329(parent_id);

CREATE INDEX entity_0329_owner_idx ON stress.entity_0329(owner_id);

CREATE TABLE stress.entity_0330 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0110(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0330_parent_idx ON stress.entity_0330(parent_id);

CREATE TABLE stress.entity_0331 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0110(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0331_parent_idx ON stress.entity_0331(parent_id);

CREATE TABLE stress.entity_0332 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0111(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0332_parent_idx ON stress.entity_0332(parent_id);

CREATE TABLE stress.entity_0333 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0111(id),
  owner_id BIGINT REFERENCES stress.entity_0326(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0333_parent_idx ON stress.entity_0333(parent_id);

CREATE INDEX entity_0333_owner_idx ON stress.entity_0333(owner_id);

CREATE TABLE stress.entity_0334 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0111(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0334_parent_idx ON stress.entity_0334(parent_id);

CREATE TABLE stress.entity_0335 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0112(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0335_parent_idx ON stress.entity_0335(parent_id);

CREATE TABLE stress.entity_0336 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0112(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0336_parent_idx ON stress.entity_0336(parent_id);

CREATE TABLE stress.entity_0337 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0112(id),
  owner_id BIGINT REFERENCES stress.entity_0330(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0337_parent_idx ON stress.entity_0337(parent_id);

CREATE INDEX entity_0337_owner_idx ON stress.entity_0337(owner_id);

CREATE TABLE stress.entity_0338 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0113(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0338_parent_idx ON stress.entity_0338(parent_id);

CREATE TABLE stress.entity_0339 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0113(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0339_parent_idx ON stress.entity_0339(parent_id);

CREATE TABLE stress.entity_0340 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0113(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0340_parent_idx ON stress.entity_0340(parent_id);

CREATE TABLE stress.entity_0341 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0114(id),
  owner_id BIGINT REFERENCES stress.entity_0334(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0341_parent_idx ON stress.entity_0341(parent_id);

CREATE INDEX entity_0341_owner_idx ON stress.entity_0341(owner_id);

CREATE TABLE stress.entity_0342 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0114(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0342_parent_idx ON stress.entity_0342(parent_id);

CREATE TABLE stress.entity_0343 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0114(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0343_parent_idx ON stress.entity_0343(parent_id);

CREATE TABLE stress.entity_0344 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0115(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0344_parent_idx ON stress.entity_0344(parent_id);

CREATE TABLE stress.entity_0345 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0115(id),
  owner_id BIGINT REFERENCES stress.entity_0338(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0345_parent_idx ON stress.entity_0345(parent_id);

CREATE INDEX entity_0345_owner_idx ON stress.entity_0345(owner_id);

CREATE TABLE stress.entity_0346 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0115(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0346_parent_idx ON stress.entity_0346(parent_id);

CREATE TABLE stress.entity_0347 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0116(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0347_parent_idx ON stress.entity_0347(parent_id);

CREATE TABLE stress.entity_0348 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0116(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0348_parent_idx ON stress.entity_0348(parent_id);

CREATE TABLE stress.entity_0349 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0116(id),
  owner_id BIGINT REFERENCES stress.entity_0342(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0349_parent_idx ON stress.entity_0349(parent_id);

CREATE INDEX entity_0349_owner_idx ON stress.entity_0349(owner_id);

CREATE TABLE stress.entity_0350 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0117(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0350_parent_idx ON stress.entity_0350(parent_id);

CREATE TABLE stress.entity_0351 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0117(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0351_parent_idx ON stress.entity_0351(parent_id);

CREATE TABLE stress.entity_0352 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0117(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0352_parent_idx ON stress.entity_0352(parent_id);

CREATE TABLE stress.entity_0353 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0118(id),
  owner_id BIGINT REFERENCES stress.entity_0346(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0353_parent_idx ON stress.entity_0353(parent_id);

CREATE INDEX entity_0353_owner_idx ON stress.entity_0353(owner_id);

CREATE TABLE stress.entity_0354 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0118(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0354_parent_idx ON stress.entity_0354(parent_id);

CREATE TABLE stress.entity_0355 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0118(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0355_parent_idx ON stress.entity_0355(parent_id);

CREATE TABLE stress.entity_0356 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0119(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0356_parent_idx ON stress.entity_0356(parent_id);

CREATE TABLE stress.entity_0357 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0119(id),
  owner_id BIGINT REFERENCES stress.entity_0350(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0357_parent_idx ON stress.entity_0357(parent_id);

CREATE INDEX entity_0357_owner_idx ON stress.entity_0357(owner_id);

CREATE TABLE stress.entity_0358 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0119(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0358_parent_idx ON stress.entity_0358(parent_id);

CREATE TABLE stress.entity_0359 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0120(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0359_parent_idx ON stress.entity_0359(parent_id);

CREATE TABLE stress.entity_0360 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0120(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0360_parent_idx ON stress.entity_0360(parent_id);

CREATE TABLE stress.entity_0361 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0120(id),
  owner_id BIGINT REFERENCES stress.entity_0354(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0361_parent_idx ON stress.entity_0361(parent_id);

CREATE INDEX entity_0361_owner_idx ON stress.entity_0361(owner_id);

CREATE TABLE stress.entity_0362 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0121(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0362_parent_idx ON stress.entity_0362(parent_id);

CREATE TABLE stress.entity_0363 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0121(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0363_parent_idx ON stress.entity_0363(parent_id);

CREATE TABLE stress.entity_0364 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0121(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0364_parent_idx ON stress.entity_0364(parent_id);

CREATE TABLE stress.entity_0365 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0122(id),
  owner_id BIGINT REFERENCES stress.entity_0358(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0365_parent_idx ON stress.entity_0365(parent_id);

CREATE INDEX entity_0365_owner_idx ON stress.entity_0365(owner_id);

CREATE TABLE stress.entity_0366 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0122(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0366_parent_idx ON stress.entity_0366(parent_id);

CREATE TABLE stress.entity_0367 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0122(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0367_parent_idx ON stress.entity_0367(parent_id);

CREATE TABLE stress.entity_0368 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0123(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0368_parent_idx ON stress.entity_0368(parent_id);

CREATE TABLE stress.entity_0369 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0123(id),
  owner_id BIGINT REFERENCES stress.entity_0362(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0369_parent_idx ON stress.entity_0369(parent_id);

CREATE INDEX entity_0369_owner_idx ON stress.entity_0369(owner_id);

CREATE TABLE stress.entity_0370 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0123(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0370_parent_idx ON stress.entity_0370(parent_id);

CREATE TABLE stress.entity_0371 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0124(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0371_parent_idx ON stress.entity_0371(parent_id);

CREATE TABLE stress.entity_0372 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0124(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0372_parent_idx ON stress.entity_0372(parent_id);

CREATE TABLE stress.entity_0373 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0124(id),
  owner_id BIGINT REFERENCES stress.entity_0366(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0373_parent_idx ON stress.entity_0373(parent_id);

CREATE INDEX entity_0373_owner_idx ON stress.entity_0373(owner_id);

CREATE TABLE stress.entity_0374 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0125(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0374_parent_idx ON stress.entity_0374(parent_id);

CREATE TABLE stress.entity_0375 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0125(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0375_parent_idx ON stress.entity_0375(parent_id);

CREATE TABLE stress.entity_0376 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0125(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0376_parent_idx ON stress.entity_0376(parent_id);

CREATE TABLE stress.entity_0377 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0126(id),
  owner_id BIGINT REFERENCES stress.entity_0370(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0377_parent_idx ON stress.entity_0377(parent_id);

CREATE INDEX entity_0377_owner_idx ON stress.entity_0377(owner_id);

CREATE TABLE stress.entity_0378 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0126(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0378_parent_idx ON stress.entity_0378(parent_id);

CREATE TABLE stress.entity_0379 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0126(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0379_parent_idx ON stress.entity_0379(parent_id);

CREATE TABLE stress.entity_0380 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0127(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0380_parent_idx ON stress.entity_0380(parent_id);

CREATE TABLE stress.entity_0381 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0127(id),
  owner_id BIGINT REFERENCES stress.entity_0374(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0381_parent_idx ON stress.entity_0381(parent_id);

CREATE INDEX entity_0381_owner_idx ON stress.entity_0381(owner_id);

CREATE TABLE stress.entity_0382 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0127(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0382_parent_idx ON stress.entity_0382(parent_id);

CREATE TABLE stress.entity_0383 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0128(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0383_parent_idx ON stress.entity_0383(parent_id);

CREATE TABLE stress.entity_0384 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0128(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0384_parent_idx ON stress.entity_0384(parent_id);

CREATE TABLE stress.entity_0385 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0128(id),
  owner_id BIGINT REFERENCES stress.entity_0378(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0385_parent_idx ON stress.entity_0385(parent_id);

CREATE INDEX entity_0385_owner_idx ON stress.entity_0385(owner_id);

CREATE TABLE stress.entity_0386 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0129(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0386_parent_idx ON stress.entity_0386(parent_id);

CREATE TABLE stress.entity_0387 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0129(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0387_parent_idx ON stress.entity_0387(parent_id);

CREATE TABLE stress.entity_0388 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0129(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0388_parent_idx ON stress.entity_0388(parent_id);

CREATE TABLE stress.entity_0389 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0130(id),
  owner_id BIGINT REFERENCES stress.entity_0382(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0389_parent_idx ON stress.entity_0389(parent_id);

CREATE INDEX entity_0389_owner_idx ON stress.entity_0389(owner_id);

CREATE TABLE stress.entity_0390 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0130(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0390_parent_idx ON stress.entity_0390(parent_id);

CREATE TABLE stress.entity_0391 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0130(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0391_parent_idx ON stress.entity_0391(parent_id);

CREATE TABLE stress.entity_0392 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0131(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0392_parent_idx ON stress.entity_0392(parent_id);

CREATE TABLE stress.entity_0393 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0131(id),
  owner_id BIGINT REFERENCES stress.entity_0386(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0393_parent_idx ON stress.entity_0393(parent_id);

CREATE INDEX entity_0393_owner_idx ON stress.entity_0393(owner_id);

CREATE TABLE stress.entity_0394 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0131(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0394_parent_idx ON stress.entity_0394(parent_id);

CREATE TABLE stress.entity_0395 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0132(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0395_parent_idx ON stress.entity_0395(parent_id);

CREATE TABLE stress.entity_0396 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0132(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0396_parent_idx ON stress.entity_0396(parent_id);

CREATE TABLE stress.entity_0397 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0132(id),
  owner_id BIGINT REFERENCES stress.entity_0390(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0397_parent_idx ON stress.entity_0397(parent_id);

CREATE INDEX entity_0397_owner_idx ON stress.entity_0397(owner_id);

CREATE TABLE stress.entity_0398 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0133(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0398_parent_idx ON stress.entity_0398(parent_id);

CREATE TABLE stress.entity_0399 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0133(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0399_parent_idx ON stress.entity_0399(parent_id);

CREATE TABLE stress.entity_0400 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0133(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0400_parent_idx ON stress.entity_0400(parent_id);

CREATE TABLE stress.entity_0401 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0134(id),
  owner_id BIGINT REFERENCES stress.entity_0394(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0401_parent_idx ON stress.entity_0401(parent_id);

CREATE INDEX entity_0401_owner_idx ON stress.entity_0401(owner_id);

CREATE TABLE stress.entity_0402 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0134(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0402_parent_idx ON stress.entity_0402(parent_id);

CREATE TABLE stress.entity_0403 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0134(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0403_parent_idx ON stress.entity_0403(parent_id);

CREATE TABLE stress.entity_0404 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0135(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0404_parent_idx ON stress.entity_0404(parent_id);

CREATE TABLE stress.entity_0405 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0135(id),
  owner_id BIGINT REFERENCES stress.entity_0398(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0405_parent_idx ON stress.entity_0405(parent_id);

CREATE INDEX entity_0405_owner_idx ON stress.entity_0405(owner_id);

CREATE TABLE stress.entity_0406 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0135(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0406_parent_idx ON stress.entity_0406(parent_id);

CREATE TABLE stress.entity_0407 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0136(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0407_parent_idx ON stress.entity_0407(parent_id);

CREATE TABLE stress.entity_0408 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0136(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0408_parent_idx ON stress.entity_0408(parent_id);

CREATE TABLE stress.entity_0409 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0136(id),
  owner_id BIGINT REFERENCES stress.entity_0402(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0409_parent_idx ON stress.entity_0409(parent_id);

CREATE INDEX entity_0409_owner_idx ON stress.entity_0409(owner_id);

CREATE TABLE stress.entity_0410 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0137(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0410_parent_idx ON stress.entity_0410(parent_id);

CREATE TABLE stress.entity_0411 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0137(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0411_parent_idx ON stress.entity_0411(parent_id);

CREATE TABLE stress.entity_0412 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0137(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0412_parent_idx ON stress.entity_0412(parent_id);

CREATE TABLE stress.entity_0413 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0138(id),
  owner_id BIGINT REFERENCES stress.entity_0406(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0413_parent_idx ON stress.entity_0413(parent_id);

CREATE INDEX entity_0413_owner_idx ON stress.entity_0413(owner_id);

CREATE TABLE stress.entity_0414 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0138(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0414_parent_idx ON stress.entity_0414(parent_id);

CREATE TABLE stress.entity_0415 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0138(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0415_parent_idx ON stress.entity_0415(parent_id);

CREATE TABLE stress.entity_0416 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0139(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0416_parent_idx ON stress.entity_0416(parent_id);

CREATE TABLE stress.entity_0417 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0139(id),
  owner_id BIGINT REFERENCES stress.entity_0410(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0417_parent_idx ON stress.entity_0417(parent_id);

CREATE INDEX entity_0417_owner_idx ON stress.entity_0417(owner_id);

CREATE TABLE stress.entity_0418 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0139(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0418_parent_idx ON stress.entity_0418(parent_id);

CREATE TABLE stress.entity_0419 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0140(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0419_parent_idx ON stress.entity_0419(parent_id);

CREATE TABLE stress.entity_0420 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0140(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0420_parent_idx ON stress.entity_0420(parent_id);

CREATE TABLE stress.entity_0421 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0140(id),
  owner_id BIGINT REFERENCES stress.entity_0414(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0421_parent_idx ON stress.entity_0421(parent_id);

CREATE INDEX entity_0421_owner_idx ON stress.entity_0421(owner_id);

CREATE TABLE stress.entity_0422 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0141(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0422_parent_idx ON stress.entity_0422(parent_id);

CREATE TABLE stress.entity_0423 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0141(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0423_parent_idx ON stress.entity_0423(parent_id);

CREATE TABLE stress.entity_0424 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0141(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0424_parent_idx ON stress.entity_0424(parent_id);

CREATE TABLE stress.entity_0425 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0142(id),
  owner_id BIGINT REFERENCES stress.entity_0418(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0425_parent_idx ON stress.entity_0425(parent_id);

CREATE INDEX entity_0425_owner_idx ON stress.entity_0425(owner_id);

CREATE TABLE stress.entity_0426 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0142(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0426_parent_idx ON stress.entity_0426(parent_id);

CREATE TABLE stress.entity_0427 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0142(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0427_parent_idx ON stress.entity_0427(parent_id);

CREATE TABLE stress.entity_0428 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0143(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0428_parent_idx ON stress.entity_0428(parent_id);

CREATE TABLE stress.entity_0429 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0143(id),
  owner_id BIGINT REFERENCES stress.entity_0422(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0429_parent_idx ON stress.entity_0429(parent_id);

CREATE INDEX entity_0429_owner_idx ON stress.entity_0429(owner_id);

CREATE TABLE stress.entity_0430 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0143(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0430_parent_idx ON stress.entity_0430(parent_id);

CREATE TABLE stress.entity_0431 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0144(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0431_parent_idx ON stress.entity_0431(parent_id);

CREATE TABLE stress.entity_0432 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0144(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0432_parent_idx ON stress.entity_0432(parent_id);

CREATE TABLE stress.entity_0433 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0144(id),
  owner_id BIGINT REFERENCES stress.entity_0426(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0433_parent_idx ON stress.entity_0433(parent_id);

CREATE INDEX entity_0433_owner_idx ON stress.entity_0433(owner_id);

CREATE TABLE stress.entity_0434 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0145(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0434_parent_idx ON stress.entity_0434(parent_id);

CREATE TABLE stress.entity_0435 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0145(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0435_parent_idx ON stress.entity_0435(parent_id);

CREATE TABLE stress.entity_0436 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0145(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0436_parent_idx ON stress.entity_0436(parent_id);

CREATE TABLE stress.entity_0437 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0146(id),
  owner_id BIGINT REFERENCES stress.entity_0430(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0437_parent_idx ON stress.entity_0437(parent_id);

CREATE INDEX entity_0437_owner_idx ON stress.entity_0437(owner_id);

CREATE TABLE stress.entity_0438 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0146(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0438_parent_idx ON stress.entity_0438(parent_id);

CREATE TABLE stress.entity_0439 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0146(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0439_parent_idx ON stress.entity_0439(parent_id);

CREATE TABLE stress.entity_0440 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0147(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0440_parent_idx ON stress.entity_0440(parent_id);

CREATE TABLE stress.entity_0441 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0147(id),
  owner_id BIGINT REFERENCES stress.entity_0434(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0441_parent_idx ON stress.entity_0441(parent_id);

CREATE INDEX entity_0441_owner_idx ON stress.entity_0441(owner_id);

CREATE TABLE stress.entity_0442 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0147(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0442_parent_idx ON stress.entity_0442(parent_id);

CREATE TABLE stress.entity_0443 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0148(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0443_parent_idx ON stress.entity_0443(parent_id);

CREATE TABLE stress.entity_0444 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0148(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0444_parent_idx ON stress.entity_0444(parent_id);

CREATE TABLE stress.entity_0445 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0148(id),
  owner_id BIGINT REFERENCES stress.entity_0438(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0445_parent_idx ON stress.entity_0445(parent_id);

CREATE INDEX entity_0445_owner_idx ON stress.entity_0445(owner_id);

CREATE TABLE stress.entity_0446 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0149(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0446_parent_idx ON stress.entity_0446(parent_id);

CREATE TABLE stress.entity_0447 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0149(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0447_parent_idx ON stress.entity_0447(parent_id);

CREATE TABLE stress.entity_0448 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0149(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0448_parent_idx ON stress.entity_0448(parent_id);

CREATE TABLE stress.entity_0449 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0150(id),
  owner_id BIGINT REFERENCES stress.entity_0442(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0449_parent_idx ON stress.entity_0449(parent_id);

CREATE INDEX entity_0449_owner_idx ON stress.entity_0449(owner_id);

CREATE TABLE stress.entity_0450 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0150(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0450_parent_idx ON stress.entity_0450(parent_id);

CREATE TABLE stress.entity_0451 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0150(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0451_parent_idx ON stress.entity_0451(parent_id);

CREATE TABLE stress.entity_0452 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0151(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0452_parent_idx ON stress.entity_0452(parent_id);

CREATE TABLE stress.entity_0453 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0151(id),
  owner_id BIGINT REFERENCES stress.entity_0446(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0453_parent_idx ON stress.entity_0453(parent_id);

CREATE INDEX entity_0453_owner_idx ON stress.entity_0453(owner_id);

CREATE TABLE stress.entity_0454 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0151(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0454_parent_idx ON stress.entity_0454(parent_id);

CREATE TABLE stress.entity_0455 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0152(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0455_parent_idx ON stress.entity_0455(parent_id);

CREATE TABLE stress.entity_0456 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0152(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0456_parent_idx ON stress.entity_0456(parent_id);

CREATE TABLE stress.entity_0457 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0152(id),
  owner_id BIGINT REFERENCES stress.entity_0450(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0457_parent_idx ON stress.entity_0457(parent_id);

CREATE INDEX entity_0457_owner_idx ON stress.entity_0457(owner_id);

CREATE TABLE stress.entity_0458 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0153(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0458_parent_idx ON stress.entity_0458(parent_id);

CREATE TABLE stress.entity_0459 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0153(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0459_parent_idx ON stress.entity_0459(parent_id);

CREATE TABLE stress.entity_0460 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0153(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0460_parent_idx ON stress.entity_0460(parent_id);

CREATE TABLE stress.entity_0461 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0154(id),
  owner_id BIGINT REFERENCES stress.entity_0454(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0461_parent_idx ON stress.entity_0461(parent_id);

CREATE INDEX entity_0461_owner_idx ON stress.entity_0461(owner_id);

CREATE TABLE stress.entity_0462 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0154(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0462_parent_idx ON stress.entity_0462(parent_id);

CREATE TABLE stress.entity_0463 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0154(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0463_parent_idx ON stress.entity_0463(parent_id);

CREATE TABLE stress.entity_0464 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0155(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0464_parent_idx ON stress.entity_0464(parent_id);

CREATE TABLE stress.entity_0465 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0155(id),
  owner_id BIGINT REFERENCES stress.entity_0458(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0465_parent_idx ON stress.entity_0465(parent_id);

CREATE INDEX entity_0465_owner_idx ON stress.entity_0465(owner_id);

CREATE TABLE stress.entity_0466 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0155(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0466_parent_idx ON stress.entity_0466(parent_id);

CREATE TABLE stress.entity_0467 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0156(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0467_parent_idx ON stress.entity_0467(parent_id);

CREATE TABLE stress.entity_0468 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0156(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0468_parent_idx ON stress.entity_0468(parent_id);

CREATE TABLE stress.entity_0469 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0156(id),
  owner_id BIGINT REFERENCES stress.entity_0462(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0469_parent_idx ON stress.entity_0469(parent_id);

CREATE INDEX entity_0469_owner_idx ON stress.entity_0469(owner_id);

CREATE TABLE stress.entity_0470 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0157(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0470_parent_idx ON stress.entity_0470(parent_id);

CREATE TABLE stress.entity_0471 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0157(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0471_parent_idx ON stress.entity_0471(parent_id);

CREATE TABLE stress.entity_0472 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0157(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0472_parent_idx ON stress.entity_0472(parent_id);

CREATE TABLE stress.entity_0473 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0158(id),
  owner_id BIGINT REFERENCES stress.entity_0466(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0473_parent_idx ON stress.entity_0473(parent_id);

CREATE INDEX entity_0473_owner_idx ON stress.entity_0473(owner_id);

CREATE TABLE stress.entity_0474 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0158(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0474_parent_idx ON stress.entity_0474(parent_id);

CREATE TABLE stress.entity_0475 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0158(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0475_parent_idx ON stress.entity_0475(parent_id);

CREATE TABLE stress.entity_0476 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0159(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0476_parent_idx ON stress.entity_0476(parent_id);

CREATE TABLE stress.entity_0477 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0159(id),
  owner_id BIGINT REFERENCES stress.entity_0470(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0477_parent_idx ON stress.entity_0477(parent_id);

CREATE INDEX entity_0477_owner_idx ON stress.entity_0477(owner_id);

CREATE TABLE stress.entity_0478 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0159(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0478_parent_idx ON stress.entity_0478(parent_id);

CREATE TABLE stress.entity_0479 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0160(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0479_parent_idx ON stress.entity_0479(parent_id);

CREATE TABLE stress.entity_0480 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0160(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0480_parent_idx ON stress.entity_0480(parent_id);

CREATE TABLE stress.entity_0481 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0160(id),
  owner_id BIGINT REFERENCES stress.entity_0474(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0481_parent_idx ON stress.entity_0481(parent_id);

CREATE INDEX entity_0481_owner_idx ON stress.entity_0481(owner_id);

CREATE TABLE stress.entity_0482 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0161(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0482_parent_idx ON stress.entity_0482(parent_id);

CREATE TABLE stress.entity_0483 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0161(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0483_parent_idx ON stress.entity_0483(parent_id);

CREATE TABLE stress.entity_0484 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0161(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0484_parent_idx ON stress.entity_0484(parent_id);

CREATE TABLE stress.entity_0485 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0162(id),
  owner_id BIGINT REFERENCES stress.entity_0478(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0485_parent_idx ON stress.entity_0485(parent_id);

CREATE INDEX entity_0485_owner_idx ON stress.entity_0485(owner_id);

CREATE TABLE stress.entity_0486 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0162(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0486_parent_idx ON stress.entity_0486(parent_id);

CREATE TABLE stress.entity_0487 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0162(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0487_parent_idx ON stress.entity_0487(parent_id);

CREATE TABLE stress.entity_0488 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0163(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0488_parent_idx ON stress.entity_0488(parent_id);

CREATE TABLE stress.entity_0489 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0163(id),
  owner_id BIGINT REFERENCES stress.entity_0482(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0489_parent_idx ON stress.entity_0489(parent_id);

CREATE INDEX entity_0489_owner_idx ON stress.entity_0489(owner_id);

CREATE TABLE stress.entity_0490 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0163(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0490_parent_idx ON stress.entity_0490(parent_id);

CREATE TABLE stress.entity_0491 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0164(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0491_parent_idx ON stress.entity_0491(parent_id);

CREATE TABLE stress.entity_0492 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0164(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0492_parent_idx ON stress.entity_0492(parent_id);

CREATE TABLE stress.entity_0493 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0164(id),
  owner_id BIGINT REFERENCES stress.entity_0486(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0493_parent_idx ON stress.entity_0493(parent_id);

CREATE INDEX entity_0493_owner_idx ON stress.entity_0493(owner_id);

CREATE TABLE stress.entity_0494 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0165(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0494_parent_idx ON stress.entity_0494(parent_id);

CREATE TABLE stress.entity_0495 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0165(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0495_parent_idx ON stress.entity_0495(parent_id);

CREATE TABLE stress.entity_0496 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0165(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0496_parent_idx ON stress.entity_0496(parent_id);

CREATE TABLE stress.entity_0497 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0166(id),
  owner_id BIGINT REFERENCES stress.entity_0490(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0497_parent_idx ON stress.entity_0497(parent_id);

CREATE INDEX entity_0497_owner_idx ON stress.entity_0497(owner_id);

CREATE TABLE stress.entity_0498 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0166(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0498_parent_idx ON stress.entity_0498(parent_id);

CREATE TABLE stress.entity_0499 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0166(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0499_parent_idx ON stress.entity_0499(parent_id);

CREATE TABLE stress.entity_0500 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0167(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0500_parent_idx ON stress.entity_0500(parent_id);
