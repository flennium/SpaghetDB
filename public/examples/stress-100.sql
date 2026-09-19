-- SpaghetDB deterministic 100-table stress fixture.

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
