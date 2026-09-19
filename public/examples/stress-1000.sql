-- SpaghetDB deterministic 1000-table stress fixture.

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

CREATE TABLE stress.entity_0501 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0167(id),
  owner_id BIGINT REFERENCES stress.entity_0494(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0501_parent_idx ON stress.entity_0501(parent_id);

CREATE INDEX entity_0501_owner_idx ON stress.entity_0501(owner_id);

CREATE TABLE stress.entity_0502 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0167(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0502_parent_idx ON stress.entity_0502(parent_id);

CREATE TABLE stress.entity_0503 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0168(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0503_parent_idx ON stress.entity_0503(parent_id);

CREATE TABLE stress.entity_0504 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0168(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0504_parent_idx ON stress.entity_0504(parent_id);

CREATE TABLE stress.entity_0505 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0168(id),
  owner_id BIGINT REFERENCES stress.entity_0498(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0505_parent_idx ON stress.entity_0505(parent_id);

CREATE INDEX entity_0505_owner_idx ON stress.entity_0505(owner_id);

CREATE TABLE stress.entity_0506 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0169(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0506_parent_idx ON stress.entity_0506(parent_id);

CREATE TABLE stress.entity_0507 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0169(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0507_parent_idx ON stress.entity_0507(parent_id);

CREATE TABLE stress.entity_0508 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0169(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0508_parent_idx ON stress.entity_0508(parent_id);

CREATE TABLE stress.entity_0509 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0170(id),
  owner_id BIGINT REFERENCES stress.entity_0502(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0509_parent_idx ON stress.entity_0509(parent_id);

CREATE INDEX entity_0509_owner_idx ON stress.entity_0509(owner_id);

CREATE TABLE stress.entity_0510 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0170(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0510_parent_idx ON stress.entity_0510(parent_id);

CREATE TABLE stress.entity_0511 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0170(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0511_parent_idx ON stress.entity_0511(parent_id);

CREATE TABLE stress.entity_0512 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0171(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0512_parent_idx ON stress.entity_0512(parent_id);

CREATE TABLE stress.entity_0513 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0171(id),
  owner_id BIGINT REFERENCES stress.entity_0506(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0513_parent_idx ON stress.entity_0513(parent_id);

CREATE INDEX entity_0513_owner_idx ON stress.entity_0513(owner_id);

CREATE TABLE stress.entity_0514 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0171(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0514_parent_idx ON stress.entity_0514(parent_id);

CREATE TABLE stress.entity_0515 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0172(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0515_parent_idx ON stress.entity_0515(parent_id);

CREATE TABLE stress.entity_0516 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0172(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0516_parent_idx ON stress.entity_0516(parent_id);

CREATE TABLE stress.entity_0517 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0172(id),
  owner_id BIGINT REFERENCES stress.entity_0510(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0517_parent_idx ON stress.entity_0517(parent_id);

CREATE INDEX entity_0517_owner_idx ON stress.entity_0517(owner_id);

CREATE TABLE stress.entity_0518 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0173(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0518_parent_idx ON stress.entity_0518(parent_id);

CREATE TABLE stress.entity_0519 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0173(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0519_parent_idx ON stress.entity_0519(parent_id);

CREATE TABLE stress.entity_0520 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0173(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0520_parent_idx ON stress.entity_0520(parent_id);

CREATE TABLE stress.entity_0521 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0174(id),
  owner_id BIGINT REFERENCES stress.entity_0514(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0521_parent_idx ON stress.entity_0521(parent_id);

CREATE INDEX entity_0521_owner_idx ON stress.entity_0521(owner_id);

CREATE TABLE stress.entity_0522 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0174(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0522_parent_idx ON stress.entity_0522(parent_id);

CREATE TABLE stress.entity_0523 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0174(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0523_parent_idx ON stress.entity_0523(parent_id);

CREATE TABLE stress.entity_0524 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0175(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0524_parent_idx ON stress.entity_0524(parent_id);

CREATE TABLE stress.entity_0525 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0175(id),
  owner_id BIGINT REFERENCES stress.entity_0518(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0525_parent_idx ON stress.entity_0525(parent_id);

CREATE INDEX entity_0525_owner_idx ON stress.entity_0525(owner_id);

CREATE TABLE stress.entity_0526 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0175(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0526_parent_idx ON stress.entity_0526(parent_id);

CREATE TABLE stress.entity_0527 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0176(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0527_parent_idx ON stress.entity_0527(parent_id);

CREATE TABLE stress.entity_0528 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0176(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0528_parent_idx ON stress.entity_0528(parent_id);

CREATE TABLE stress.entity_0529 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0176(id),
  owner_id BIGINT REFERENCES stress.entity_0522(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0529_parent_idx ON stress.entity_0529(parent_id);

CREATE INDEX entity_0529_owner_idx ON stress.entity_0529(owner_id);

CREATE TABLE stress.entity_0530 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0177(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0530_parent_idx ON stress.entity_0530(parent_id);

CREATE TABLE stress.entity_0531 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0177(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0531_parent_idx ON stress.entity_0531(parent_id);

CREATE TABLE stress.entity_0532 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0177(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0532_parent_idx ON stress.entity_0532(parent_id);

CREATE TABLE stress.entity_0533 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0178(id),
  owner_id BIGINT REFERENCES stress.entity_0526(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0533_parent_idx ON stress.entity_0533(parent_id);

CREATE INDEX entity_0533_owner_idx ON stress.entity_0533(owner_id);

CREATE TABLE stress.entity_0534 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0178(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0534_parent_idx ON stress.entity_0534(parent_id);

CREATE TABLE stress.entity_0535 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0178(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0535_parent_idx ON stress.entity_0535(parent_id);

CREATE TABLE stress.entity_0536 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0179(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0536_parent_idx ON stress.entity_0536(parent_id);

CREATE TABLE stress.entity_0537 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0179(id),
  owner_id BIGINT REFERENCES stress.entity_0530(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0537_parent_idx ON stress.entity_0537(parent_id);

CREATE INDEX entity_0537_owner_idx ON stress.entity_0537(owner_id);

CREATE TABLE stress.entity_0538 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0179(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0538_parent_idx ON stress.entity_0538(parent_id);

CREATE TABLE stress.entity_0539 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0180(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0539_parent_idx ON stress.entity_0539(parent_id);

CREATE TABLE stress.entity_0540 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0180(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0540_parent_idx ON stress.entity_0540(parent_id);

CREATE TABLE stress.entity_0541 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0180(id),
  owner_id BIGINT REFERENCES stress.entity_0534(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0541_parent_idx ON stress.entity_0541(parent_id);

CREATE INDEX entity_0541_owner_idx ON stress.entity_0541(owner_id);

CREATE TABLE stress.entity_0542 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0181(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0542_parent_idx ON stress.entity_0542(parent_id);

CREATE TABLE stress.entity_0543 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0181(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0543_parent_idx ON stress.entity_0543(parent_id);

CREATE TABLE stress.entity_0544 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0181(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0544_parent_idx ON stress.entity_0544(parent_id);

CREATE TABLE stress.entity_0545 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0182(id),
  owner_id BIGINT REFERENCES stress.entity_0538(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0545_parent_idx ON stress.entity_0545(parent_id);

CREATE INDEX entity_0545_owner_idx ON stress.entity_0545(owner_id);

CREATE TABLE stress.entity_0546 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0182(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0546_parent_idx ON stress.entity_0546(parent_id);

CREATE TABLE stress.entity_0547 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0182(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0547_parent_idx ON stress.entity_0547(parent_id);

CREATE TABLE stress.entity_0548 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0183(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0548_parent_idx ON stress.entity_0548(parent_id);

CREATE TABLE stress.entity_0549 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0183(id),
  owner_id BIGINT REFERENCES stress.entity_0542(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0549_parent_idx ON stress.entity_0549(parent_id);

CREATE INDEX entity_0549_owner_idx ON stress.entity_0549(owner_id);

CREATE TABLE stress.entity_0550 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0183(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0550_parent_idx ON stress.entity_0550(parent_id);

CREATE TABLE stress.entity_0551 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0184(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0551_parent_idx ON stress.entity_0551(parent_id);

CREATE TABLE stress.entity_0552 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0184(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0552_parent_idx ON stress.entity_0552(parent_id);

CREATE TABLE stress.entity_0553 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0184(id),
  owner_id BIGINT REFERENCES stress.entity_0546(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0553_parent_idx ON stress.entity_0553(parent_id);

CREATE INDEX entity_0553_owner_idx ON stress.entity_0553(owner_id);

CREATE TABLE stress.entity_0554 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0185(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0554_parent_idx ON stress.entity_0554(parent_id);

CREATE TABLE stress.entity_0555 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0185(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0555_parent_idx ON stress.entity_0555(parent_id);

CREATE TABLE stress.entity_0556 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0185(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0556_parent_idx ON stress.entity_0556(parent_id);

CREATE TABLE stress.entity_0557 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0186(id),
  owner_id BIGINT REFERENCES stress.entity_0550(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0557_parent_idx ON stress.entity_0557(parent_id);

CREATE INDEX entity_0557_owner_idx ON stress.entity_0557(owner_id);

CREATE TABLE stress.entity_0558 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0186(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0558_parent_idx ON stress.entity_0558(parent_id);

CREATE TABLE stress.entity_0559 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0186(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0559_parent_idx ON stress.entity_0559(parent_id);

CREATE TABLE stress.entity_0560 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0187(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0560_parent_idx ON stress.entity_0560(parent_id);

CREATE TABLE stress.entity_0561 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0187(id),
  owner_id BIGINT REFERENCES stress.entity_0554(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0561_parent_idx ON stress.entity_0561(parent_id);

CREATE INDEX entity_0561_owner_idx ON stress.entity_0561(owner_id);

CREATE TABLE stress.entity_0562 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0187(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0562_parent_idx ON stress.entity_0562(parent_id);

CREATE TABLE stress.entity_0563 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0188(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0563_parent_idx ON stress.entity_0563(parent_id);

CREATE TABLE stress.entity_0564 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0188(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0564_parent_idx ON stress.entity_0564(parent_id);

CREATE TABLE stress.entity_0565 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0188(id),
  owner_id BIGINT REFERENCES stress.entity_0558(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0565_parent_idx ON stress.entity_0565(parent_id);

CREATE INDEX entity_0565_owner_idx ON stress.entity_0565(owner_id);

CREATE TABLE stress.entity_0566 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0189(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0566_parent_idx ON stress.entity_0566(parent_id);

CREATE TABLE stress.entity_0567 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0189(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0567_parent_idx ON stress.entity_0567(parent_id);

CREATE TABLE stress.entity_0568 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0189(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0568_parent_idx ON stress.entity_0568(parent_id);

CREATE TABLE stress.entity_0569 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0190(id),
  owner_id BIGINT REFERENCES stress.entity_0562(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0569_parent_idx ON stress.entity_0569(parent_id);

CREATE INDEX entity_0569_owner_idx ON stress.entity_0569(owner_id);

CREATE TABLE stress.entity_0570 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0190(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0570_parent_idx ON stress.entity_0570(parent_id);

CREATE TABLE stress.entity_0571 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0190(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0571_parent_idx ON stress.entity_0571(parent_id);

CREATE TABLE stress.entity_0572 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0191(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0572_parent_idx ON stress.entity_0572(parent_id);

CREATE TABLE stress.entity_0573 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0191(id),
  owner_id BIGINT REFERENCES stress.entity_0566(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0573_parent_idx ON stress.entity_0573(parent_id);

CREATE INDEX entity_0573_owner_idx ON stress.entity_0573(owner_id);

CREATE TABLE stress.entity_0574 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0191(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0574_parent_idx ON stress.entity_0574(parent_id);

CREATE TABLE stress.entity_0575 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0192(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0575_parent_idx ON stress.entity_0575(parent_id);

CREATE TABLE stress.entity_0576 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0192(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0576_parent_idx ON stress.entity_0576(parent_id);

CREATE TABLE stress.entity_0577 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0192(id),
  owner_id BIGINT REFERENCES stress.entity_0570(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0577_parent_idx ON stress.entity_0577(parent_id);

CREATE INDEX entity_0577_owner_idx ON stress.entity_0577(owner_id);

CREATE TABLE stress.entity_0578 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0193(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0578_parent_idx ON stress.entity_0578(parent_id);

CREATE TABLE stress.entity_0579 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0193(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0579_parent_idx ON stress.entity_0579(parent_id);

CREATE TABLE stress.entity_0580 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0193(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0580_parent_idx ON stress.entity_0580(parent_id);

CREATE TABLE stress.entity_0581 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0194(id),
  owner_id BIGINT REFERENCES stress.entity_0574(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0581_parent_idx ON stress.entity_0581(parent_id);

CREATE INDEX entity_0581_owner_idx ON stress.entity_0581(owner_id);

CREATE TABLE stress.entity_0582 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0194(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0582_parent_idx ON stress.entity_0582(parent_id);

CREATE TABLE stress.entity_0583 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0194(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0583_parent_idx ON stress.entity_0583(parent_id);

CREATE TABLE stress.entity_0584 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0195(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0584_parent_idx ON stress.entity_0584(parent_id);

CREATE TABLE stress.entity_0585 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0195(id),
  owner_id BIGINT REFERENCES stress.entity_0578(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0585_parent_idx ON stress.entity_0585(parent_id);

CREATE INDEX entity_0585_owner_idx ON stress.entity_0585(owner_id);

CREATE TABLE stress.entity_0586 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0195(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0586_parent_idx ON stress.entity_0586(parent_id);

CREATE TABLE stress.entity_0587 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0196(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0587_parent_idx ON stress.entity_0587(parent_id);

CREATE TABLE stress.entity_0588 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0196(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0588_parent_idx ON stress.entity_0588(parent_id);

CREATE TABLE stress.entity_0589 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0196(id),
  owner_id BIGINT REFERENCES stress.entity_0582(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0589_parent_idx ON stress.entity_0589(parent_id);

CREATE INDEX entity_0589_owner_idx ON stress.entity_0589(owner_id);

CREATE TABLE stress.entity_0590 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0197(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0590_parent_idx ON stress.entity_0590(parent_id);

CREATE TABLE stress.entity_0591 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0197(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0591_parent_idx ON stress.entity_0591(parent_id);

CREATE TABLE stress.entity_0592 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0197(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0592_parent_idx ON stress.entity_0592(parent_id);

CREATE TABLE stress.entity_0593 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0198(id),
  owner_id BIGINT REFERENCES stress.entity_0586(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0593_parent_idx ON stress.entity_0593(parent_id);

CREATE INDEX entity_0593_owner_idx ON stress.entity_0593(owner_id);

CREATE TABLE stress.entity_0594 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0198(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0594_parent_idx ON stress.entity_0594(parent_id);

CREATE TABLE stress.entity_0595 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0198(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0595_parent_idx ON stress.entity_0595(parent_id);

CREATE TABLE stress.entity_0596 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0199(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0596_parent_idx ON stress.entity_0596(parent_id);

CREATE TABLE stress.entity_0597 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0199(id),
  owner_id BIGINT REFERENCES stress.entity_0590(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0597_parent_idx ON stress.entity_0597(parent_id);

CREATE INDEX entity_0597_owner_idx ON stress.entity_0597(owner_id);

CREATE TABLE stress.entity_0598 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0199(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0598_parent_idx ON stress.entity_0598(parent_id);

CREATE TABLE stress.entity_0599 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0200(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0599_parent_idx ON stress.entity_0599(parent_id);

CREATE TABLE stress.entity_0600 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0200(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0600_parent_idx ON stress.entity_0600(parent_id);

CREATE TABLE stress.entity_0601 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0200(id),
  owner_id BIGINT REFERENCES stress.entity_0594(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0601_parent_idx ON stress.entity_0601(parent_id);

CREATE INDEX entity_0601_owner_idx ON stress.entity_0601(owner_id);

CREATE TABLE stress.entity_0602 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0201(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0602_parent_idx ON stress.entity_0602(parent_id);

CREATE TABLE stress.entity_0603 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0201(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0603_parent_idx ON stress.entity_0603(parent_id);

CREATE TABLE stress.entity_0604 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0201(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0604_parent_idx ON stress.entity_0604(parent_id);

CREATE TABLE stress.entity_0605 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0202(id),
  owner_id BIGINT REFERENCES stress.entity_0598(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0605_parent_idx ON stress.entity_0605(parent_id);

CREATE INDEX entity_0605_owner_idx ON stress.entity_0605(owner_id);

CREATE TABLE stress.entity_0606 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0202(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0606_parent_idx ON stress.entity_0606(parent_id);

CREATE TABLE stress.entity_0607 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0202(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0607_parent_idx ON stress.entity_0607(parent_id);

CREATE TABLE stress.entity_0608 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0203(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0608_parent_idx ON stress.entity_0608(parent_id);

CREATE TABLE stress.entity_0609 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0203(id),
  owner_id BIGINT REFERENCES stress.entity_0602(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0609_parent_idx ON stress.entity_0609(parent_id);

CREATE INDEX entity_0609_owner_idx ON stress.entity_0609(owner_id);

CREATE TABLE stress.entity_0610 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0203(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0610_parent_idx ON stress.entity_0610(parent_id);

CREATE TABLE stress.entity_0611 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0204(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0611_parent_idx ON stress.entity_0611(parent_id);

CREATE TABLE stress.entity_0612 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0204(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0612_parent_idx ON stress.entity_0612(parent_id);

CREATE TABLE stress.entity_0613 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0204(id),
  owner_id BIGINT REFERENCES stress.entity_0606(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0613_parent_idx ON stress.entity_0613(parent_id);

CREATE INDEX entity_0613_owner_idx ON stress.entity_0613(owner_id);

CREATE TABLE stress.entity_0614 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0205(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0614_parent_idx ON stress.entity_0614(parent_id);

CREATE TABLE stress.entity_0615 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0205(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0615_parent_idx ON stress.entity_0615(parent_id);

CREATE TABLE stress.entity_0616 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0205(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0616_parent_idx ON stress.entity_0616(parent_id);

CREATE TABLE stress.entity_0617 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0206(id),
  owner_id BIGINT REFERENCES stress.entity_0610(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0617_parent_idx ON stress.entity_0617(parent_id);

CREATE INDEX entity_0617_owner_idx ON stress.entity_0617(owner_id);

CREATE TABLE stress.entity_0618 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0206(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0618_parent_idx ON stress.entity_0618(parent_id);

CREATE TABLE stress.entity_0619 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0206(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0619_parent_idx ON stress.entity_0619(parent_id);

CREATE TABLE stress.entity_0620 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0207(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0620_parent_idx ON stress.entity_0620(parent_id);

CREATE TABLE stress.entity_0621 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0207(id),
  owner_id BIGINT REFERENCES stress.entity_0614(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0621_parent_idx ON stress.entity_0621(parent_id);

CREATE INDEX entity_0621_owner_idx ON stress.entity_0621(owner_id);

CREATE TABLE stress.entity_0622 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0207(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0622_parent_idx ON stress.entity_0622(parent_id);

CREATE TABLE stress.entity_0623 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0208(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0623_parent_idx ON stress.entity_0623(parent_id);

CREATE TABLE stress.entity_0624 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0208(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0624_parent_idx ON stress.entity_0624(parent_id);

CREATE TABLE stress.entity_0625 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0208(id),
  owner_id BIGINT REFERENCES stress.entity_0618(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0625_parent_idx ON stress.entity_0625(parent_id);

CREATE INDEX entity_0625_owner_idx ON stress.entity_0625(owner_id);

CREATE TABLE stress.entity_0626 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0209(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0626_parent_idx ON stress.entity_0626(parent_id);

CREATE TABLE stress.entity_0627 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0209(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0627_parent_idx ON stress.entity_0627(parent_id);

CREATE TABLE stress.entity_0628 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0209(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0628_parent_idx ON stress.entity_0628(parent_id);

CREATE TABLE stress.entity_0629 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0210(id),
  owner_id BIGINT REFERENCES stress.entity_0622(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0629_parent_idx ON stress.entity_0629(parent_id);

CREATE INDEX entity_0629_owner_idx ON stress.entity_0629(owner_id);

CREATE TABLE stress.entity_0630 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0210(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0630_parent_idx ON stress.entity_0630(parent_id);

CREATE TABLE stress.entity_0631 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0210(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0631_parent_idx ON stress.entity_0631(parent_id);

CREATE TABLE stress.entity_0632 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0211(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0632_parent_idx ON stress.entity_0632(parent_id);

CREATE TABLE stress.entity_0633 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0211(id),
  owner_id BIGINT REFERENCES stress.entity_0626(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0633_parent_idx ON stress.entity_0633(parent_id);

CREATE INDEX entity_0633_owner_idx ON stress.entity_0633(owner_id);

CREATE TABLE stress.entity_0634 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0211(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0634_parent_idx ON stress.entity_0634(parent_id);

CREATE TABLE stress.entity_0635 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0212(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0635_parent_idx ON stress.entity_0635(parent_id);

CREATE TABLE stress.entity_0636 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0212(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0636_parent_idx ON stress.entity_0636(parent_id);

CREATE TABLE stress.entity_0637 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0212(id),
  owner_id BIGINT REFERENCES stress.entity_0630(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0637_parent_idx ON stress.entity_0637(parent_id);

CREATE INDEX entity_0637_owner_idx ON stress.entity_0637(owner_id);

CREATE TABLE stress.entity_0638 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0213(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0638_parent_idx ON stress.entity_0638(parent_id);

CREATE TABLE stress.entity_0639 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0213(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0639_parent_idx ON stress.entity_0639(parent_id);

CREATE TABLE stress.entity_0640 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0213(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0640_parent_idx ON stress.entity_0640(parent_id);

CREATE TABLE stress.entity_0641 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0214(id),
  owner_id BIGINT REFERENCES stress.entity_0634(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0641_parent_idx ON stress.entity_0641(parent_id);

CREATE INDEX entity_0641_owner_idx ON stress.entity_0641(owner_id);

CREATE TABLE stress.entity_0642 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0214(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0642_parent_idx ON stress.entity_0642(parent_id);

CREATE TABLE stress.entity_0643 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0214(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0643_parent_idx ON stress.entity_0643(parent_id);

CREATE TABLE stress.entity_0644 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0215(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0644_parent_idx ON stress.entity_0644(parent_id);

CREATE TABLE stress.entity_0645 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0215(id),
  owner_id BIGINT REFERENCES stress.entity_0638(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0645_parent_idx ON stress.entity_0645(parent_id);

CREATE INDEX entity_0645_owner_idx ON stress.entity_0645(owner_id);

CREATE TABLE stress.entity_0646 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0215(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0646_parent_idx ON stress.entity_0646(parent_id);

CREATE TABLE stress.entity_0647 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0216(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0647_parent_idx ON stress.entity_0647(parent_id);

CREATE TABLE stress.entity_0648 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0216(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0648_parent_idx ON stress.entity_0648(parent_id);

CREATE TABLE stress.entity_0649 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0216(id),
  owner_id BIGINT REFERENCES stress.entity_0642(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0649_parent_idx ON stress.entity_0649(parent_id);

CREATE INDEX entity_0649_owner_idx ON stress.entity_0649(owner_id);

CREATE TABLE stress.entity_0650 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0217(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0650_parent_idx ON stress.entity_0650(parent_id);

CREATE TABLE stress.entity_0651 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0217(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0651_parent_idx ON stress.entity_0651(parent_id);

CREATE TABLE stress.entity_0652 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0217(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0652_parent_idx ON stress.entity_0652(parent_id);

CREATE TABLE stress.entity_0653 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0218(id),
  owner_id BIGINT REFERENCES stress.entity_0646(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0653_parent_idx ON stress.entity_0653(parent_id);

CREATE INDEX entity_0653_owner_idx ON stress.entity_0653(owner_id);

CREATE TABLE stress.entity_0654 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0218(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0654_parent_idx ON stress.entity_0654(parent_id);

CREATE TABLE stress.entity_0655 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0218(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0655_parent_idx ON stress.entity_0655(parent_id);

CREATE TABLE stress.entity_0656 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0219(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0656_parent_idx ON stress.entity_0656(parent_id);

CREATE TABLE stress.entity_0657 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0219(id),
  owner_id BIGINT REFERENCES stress.entity_0650(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0657_parent_idx ON stress.entity_0657(parent_id);

CREATE INDEX entity_0657_owner_idx ON stress.entity_0657(owner_id);

CREATE TABLE stress.entity_0658 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0219(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0658_parent_idx ON stress.entity_0658(parent_id);

CREATE TABLE stress.entity_0659 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0220(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0659_parent_idx ON stress.entity_0659(parent_id);

CREATE TABLE stress.entity_0660 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0220(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0660_parent_idx ON stress.entity_0660(parent_id);

CREATE TABLE stress.entity_0661 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0220(id),
  owner_id BIGINT REFERENCES stress.entity_0654(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0661_parent_idx ON stress.entity_0661(parent_id);

CREATE INDEX entity_0661_owner_idx ON stress.entity_0661(owner_id);

CREATE TABLE stress.entity_0662 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0221(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0662_parent_idx ON stress.entity_0662(parent_id);

CREATE TABLE stress.entity_0663 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0221(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0663_parent_idx ON stress.entity_0663(parent_id);

CREATE TABLE stress.entity_0664 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0221(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0664_parent_idx ON stress.entity_0664(parent_id);

CREATE TABLE stress.entity_0665 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0222(id),
  owner_id BIGINT REFERENCES stress.entity_0658(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0665_parent_idx ON stress.entity_0665(parent_id);

CREATE INDEX entity_0665_owner_idx ON stress.entity_0665(owner_id);

CREATE TABLE stress.entity_0666 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0222(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0666_parent_idx ON stress.entity_0666(parent_id);

CREATE TABLE stress.entity_0667 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0222(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0667_parent_idx ON stress.entity_0667(parent_id);

CREATE TABLE stress.entity_0668 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0223(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0668_parent_idx ON stress.entity_0668(parent_id);

CREATE TABLE stress.entity_0669 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0223(id),
  owner_id BIGINT REFERENCES stress.entity_0662(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0669_parent_idx ON stress.entity_0669(parent_id);

CREATE INDEX entity_0669_owner_idx ON stress.entity_0669(owner_id);

CREATE TABLE stress.entity_0670 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0223(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0670_parent_idx ON stress.entity_0670(parent_id);

CREATE TABLE stress.entity_0671 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0224(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0671_parent_idx ON stress.entity_0671(parent_id);

CREATE TABLE stress.entity_0672 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0224(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0672_parent_idx ON stress.entity_0672(parent_id);

CREATE TABLE stress.entity_0673 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0224(id),
  owner_id BIGINT REFERENCES stress.entity_0666(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0673_parent_idx ON stress.entity_0673(parent_id);

CREATE INDEX entity_0673_owner_idx ON stress.entity_0673(owner_id);

CREATE TABLE stress.entity_0674 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0225(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0674_parent_idx ON stress.entity_0674(parent_id);

CREATE TABLE stress.entity_0675 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0225(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0675_parent_idx ON stress.entity_0675(parent_id);

CREATE TABLE stress.entity_0676 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0225(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0676_parent_idx ON stress.entity_0676(parent_id);

CREATE TABLE stress.entity_0677 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0226(id),
  owner_id BIGINT REFERENCES stress.entity_0670(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0677_parent_idx ON stress.entity_0677(parent_id);

CREATE INDEX entity_0677_owner_idx ON stress.entity_0677(owner_id);

CREATE TABLE stress.entity_0678 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0226(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0678_parent_idx ON stress.entity_0678(parent_id);

CREATE TABLE stress.entity_0679 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0226(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0679_parent_idx ON stress.entity_0679(parent_id);

CREATE TABLE stress.entity_0680 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0227(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0680_parent_idx ON stress.entity_0680(parent_id);

CREATE TABLE stress.entity_0681 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0227(id),
  owner_id BIGINT REFERENCES stress.entity_0674(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0681_parent_idx ON stress.entity_0681(parent_id);

CREATE INDEX entity_0681_owner_idx ON stress.entity_0681(owner_id);

CREATE TABLE stress.entity_0682 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0227(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0682_parent_idx ON stress.entity_0682(parent_id);

CREATE TABLE stress.entity_0683 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0228(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0683_parent_idx ON stress.entity_0683(parent_id);

CREATE TABLE stress.entity_0684 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0228(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0684_parent_idx ON stress.entity_0684(parent_id);

CREATE TABLE stress.entity_0685 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0228(id),
  owner_id BIGINT REFERENCES stress.entity_0678(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0685_parent_idx ON stress.entity_0685(parent_id);

CREATE INDEX entity_0685_owner_idx ON stress.entity_0685(owner_id);

CREATE TABLE stress.entity_0686 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0229(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0686_parent_idx ON stress.entity_0686(parent_id);

CREATE TABLE stress.entity_0687 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0229(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0687_parent_idx ON stress.entity_0687(parent_id);

CREATE TABLE stress.entity_0688 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0229(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0688_parent_idx ON stress.entity_0688(parent_id);

CREATE TABLE stress.entity_0689 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0230(id),
  owner_id BIGINT REFERENCES stress.entity_0682(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0689_parent_idx ON stress.entity_0689(parent_id);

CREATE INDEX entity_0689_owner_idx ON stress.entity_0689(owner_id);

CREATE TABLE stress.entity_0690 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0230(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0690_parent_idx ON stress.entity_0690(parent_id);

CREATE TABLE stress.entity_0691 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0230(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0691_parent_idx ON stress.entity_0691(parent_id);

CREATE TABLE stress.entity_0692 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0231(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0692_parent_idx ON stress.entity_0692(parent_id);

CREATE TABLE stress.entity_0693 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0231(id),
  owner_id BIGINT REFERENCES stress.entity_0686(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0693_parent_idx ON stress.entity_0693(parent_id);

CREATE INDEX entity_0693_owner_idx ON stress.entity_0693(owner_id);

CREATE TABLE stress.entity_0694 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0231(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0694_parent_idx ON stress.entity_0694(parent_id);

CREATE TABLE stress.entity_0695 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0232(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0695_parent_idx ON stress.entity_0695(parent_id);

CREATE TABLE stress.entity_0696 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0232(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0696_parent_idx ON stress.entity_0696(parent_id);

CREATE TABLE stress.entity_0697 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0232(id),
  owner_id BIGINT REFERENCES stress.entity_0690(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0697_parent_idx ON stress.entity_0697(parent_id);

CREATE INDEX entity_0697_owner_idx ON stress.entity_0697(owner_id);

CREATE TABLE stress.entity_0698 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0233(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0698_parent_idx ON stress.entity_0698(parent_id);

CREATE TABLE stress.entity_0699 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0233(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0699_parent_idx ON stress.entity_0699(parent_id);

CREATE TABLE stress.entity_0700 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0233(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0700_parent_idx ON stress.entity_0700(parent_id);

CREATE TABLE stress.entity_0701 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0234(id),
  owner_id BIGINT REFERENCES stress.entity_0694(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0701_parent_idx ON stress.entity_0701(parent_id);

CREATE INDEX entity_0701_owner_idx ON stress.entity_0701(owner_id);

CREATE TABLE stress.entity_0702 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0234(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0702_parent_idx ON stress.entity_0702(parent_id);

CREATE TABLE stress.entity_0703 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0234(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0703_parent_idx ON stress.entity_0703(parent_id);

CREATE TABLE stress.entity_0704 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0235(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0704_parent_idx ON stress.entity_0704(parent_id);

CREATE TABLE stress.entity_0705 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0235(id),
  owner_id BIGINT REFERENCES stress.entity_0698(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0705_parent_idx ON stress.entity_0705(parent_id);

CREATE INDEX entity_0705_owner_idx ON stress.entity_0705(owner_id);

CREATE TABLE stress.entity_0706 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0235(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0706_parent_idx ON stress.entity_0706(parent_id);

CREATE TABLE stress.entity_0707 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0236(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0707_parent_idx ON stress.entity_0707(parent_id);

CREATE TABLE stress.entity_0708 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0236(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0708_parent_idx ON stress.entity_0708(parent_id);

CREATE TABLE stress.entity_0709 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0236(id),
  owner_id BIGINT REFERENCES stress.entity_0702(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0709_parent_idx ON stress.entity_0709(parent_id);

CREATE INDEX entity_0709_owner_idx ON stress.entity_0709(owner_id);

CREATE TABLE stress.entity_0710 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0237(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0710_parent_idx ON stress.entity_0710(parent_id);

CREATE TABLE stress.entity_0711 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0237(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0711_parent_idx ON stress.entity_0711(parent_id);

CREATE TABLE stress.entity_0712 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0237(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0712_parent_idx ON stress.entity_0712(parent_id);

CREATE TABLE stress.entity_0713 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0238(id),
  owner_id BIGINT REFERENCES stress.entity_0706(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0713_parent_idx ON stress.entity_0713(parent_id);

CREATE INDEX entity_0713_owner_idx ON stress.entity_0713(owner_id);

CREATE TABLE stress.entity_0714 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0238(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0714_parent_idx ON stress.entity_0714(parent_id);

CREATE TABLE stress.entity_0715 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0238(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0715_parent_idx ON stress.entity_0715(parent_id);

CREATE TABLE stress.entity_0716 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0239(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0716_parent_idx ON stress.entity_0716(parent_id);

CREATE TABLE stress.entity_0717 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0239(id),
  owner_id BIGINT REFERENCES stress.entity_0710(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0717_parent_idx ON stress.entity_0717(parent_id);

CREATE INDEX entity_0717_owner_idx ON stress.entity_0717(owner_id);

CREATE TABLE stress.entity_0718 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0239(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0718_parent_idx ON stress.entity_0718(parent_id);

CREATE TABLE stress.entity_0719 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0240(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0719_parent_idx ON stress.entity_0719(parent_id);

CREATE TABLE stress.entity_0720 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0240(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0720_parent_idx ON stress.entity_0720(parent_id);

CREATE TABLE stress.entity_0721 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0240(id),
  owner_id BIGINT REFERENCES stress.entity_0714(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0721_parent_idx ON stress.entity_0721(parent_id);

CREATE INDEX entity_0721_owner_idx ON stress.entity_0721(owner_id);

CREATE TABLE stress.entity_0722 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0241(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0722_parent_idx ON stress.entity_0722(parent_id);

CREATE TABLE stress.entity_0723 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0241(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0723_parent_idx ON stress.entity_0723(parent_id);

CREATE TABLE stress.entity_0724 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0241(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0724_parent_idx ON stress.entity_0724(parent_id);

CREATE TABLE stress.entity_0725 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0242(id),
  owner_id BIGINT REFERENCES stress.entity_0718(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0725_parent_idx ON stress.entity_0725(parent_id);

CREATE INDEX entity_0725_owner_idx ON stress.entity_0725(owner_id);

CREATE TABLE stress.entity_0726 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0242(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0726_parent_idx ON stress.entity_0726(parent_id);

CREATE TABLE stress.entity_0727 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0242(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0727_parent_idx ON stress.entity_0727(parent_id);

CREATE TABLE stress.entity_0728 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0243(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0728_parent_idx ON stress.entity_0728(parent_id);

CREATE TABLE stress.entity_0729 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0243(id),
  owner_id BIGINT REFERENCES stress.entity_0722(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0729_parent_idx ON stress.entity_0729(parent_id);

CREATE INDEX entity_0729_owner_idx ON stress.entity_0729(owner_id);

CREATE TABLE stress.entity_0730 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0243(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0730_parent_idx ON stress.entity_0730(parent_id);

CREATE TABLE stress.entity_0731 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0244(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0731_parent_idx ON stress.entity_0731(parent_id);

CREATE TABLE stress.entity_0732 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0244(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0732_parent_idx ON stress.entity_0732(parent_id);

CREATE TABLE stress.entity_0733 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0244(id),
  owner_id BIGINT REFERENCES stress.entity_0726(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0733_parent_idx ON stress.entity_0733(parent_id);

CREATE INDEX entity_0733_owner_idx ON stress.entity_0733(owner_id);

CREATE TABLE stress.entity_0734 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0245(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0734_parent_idx ON stress.entity_0734(parent_id);

CREATE TABLE stress.entity_0735 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0245(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0735_parent_idx ON stress.entity_0735(parent_id);

CREATE TABLE stress.entity_0736 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0245(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0736_parent_idx ON stress.entity_0736(parent_id);

CREATE TABLE stress.entity_0737 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0246(id),
  owner_id BIGINT REFERENCES stress.entity_0730(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0737_parent_idx ON stress.entity_0737(parent_id);

CREATE INDEX entity_0737_owner_idx ON stress.entity_0737(owner_id);

CREATE TABLE stress.entity_0738 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0246(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0738_parent_idx ON stress.entity_0738(parent_id);

CREATE TABLE stress.entity_0739 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0246(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0739_parent_idx ON stress.entity_0739(parent_id);

CREATE TABLE stress.entity_0740 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0247(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0740_parent_idx ON stress.entity_0740(parent_id);

CREATE TABLE stress.entity_0741 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0247(id),
  owner_id BIGINT REFERENCES stress.entity_0734(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0741_parent_idx ON stress.entity_0741(parent_id);

CREATE INDEX entity_0741_owner_idx ON stress.entity_0741(owner_id);

CREATE TABLE stress.entity_0742 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0247(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0742_parent_idx ON stress.entity_0742(parent_id);

CREATE TABLE stress.entity_0743 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0248(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0743_parent_idx ON stress.entity_0743(parent_id);

CREATE TABLE stress.entity_0744 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0248(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0744_parent_idx ON stress.entity_0744(parent_id);

CREATE TABLE stress.entity_0745 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0248(id),
  owner_id BIGINT REFERENCES stress.entity_0738(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0745_parent_idx ON stress.entity_0745(parent_id);

CREATE INDEX entity_0745_owner_idx ON stress.entity_0745(owner_id);

CREATE TABLE stress.entity_0746 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0249(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0746_parent_idx ON stress.entity_0746(parent_id);

CREATE TABLE stress.entity_0747 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0249(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0747_parent_idx ON stress.entity_0747(parent_id);

CREATE TABLE stress.entity_0748 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0249(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0748_parent_idx ON stress.entity_0748(parent_id);

CREATE TABLE stress.entity_0749 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0250(id),
  owner_id BIGINT REFERENCES stress.entity_0742(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0749_parent_idx ON stress.entity_0749(parent_id);

CREATE INDEX entity_0749_owner_idx ON stress.entity_0749(owner_id);

CREATE TABLE stress.entity_0750 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0250(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0750_parent_idx ON stress.entity_0750(parent_id);

CREATE TABLE stress.entity_0751 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0250(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0751_parent_idx ON stress.entity_0751(parent_id);

CREATE TABLE stress.entity_0752 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0251(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0752_parent_idx ON stress.entity_0752(parent_id);

CREATE TABLE stress.entity_0753 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0251(id),
  owner_id BIGINT REFERENCES stress.entity_0746(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0753_parent_idx ON stress.entity_0753(parent_id);

CREATE INDEX entity_0753_owner_idx ON stress.entity_0753(owner_id);

CREATE TABLE stress.entity_0754 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0251(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0754_parent_idx ON stress.entity_0754(parent_id);

CREATE TABLE stress.entity_0755 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0252(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0755_parent_idx ON stress.entity_0755(parent_id);

CREATE TABLE stress.entity_0756 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0252(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0756_parent_idx ON stress.entity_0756(parent_id);

CREATE TABLE stress.entity_0757 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0252(id),
  owner_id BIGINT REFERENCES stress.entity_0750(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0757_parent_idx ON stress.entity_0757(parent_id);

CREATE INDEX entity_0757_owner_idx ON stress.entity_0757(owner_id);

CREATE TABLE stress.entity_0758 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0253(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0758_parent_idx ON stress.entity_0758(parent_id);

CREATE TABLE stress.entity_0759 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0253(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0759_parent_idx ON stress.entity_0759(parent_id);

CREATE TABLE stress.entity_0760 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0253(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0760_parent_idx ON stress.entity_0760(parent_id);

CREATE TABLE stress.entity_0761 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0254(id),
  owner_id BIGINT REFERENCES stress.entity_0754(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0761_parent_idx ON stress.entity_0761(parent_id);

CREATE INDEX entity_0761_owner_idx ON stress.entity_0761(owner_id);

CREATE TABLE stress.entity_0762 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0254(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0762_parent_idx ON stress.entity_0762(parent_id);

CREATE TABLE stress.entity_0763 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0254(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0763_parent_idx ON stress.entity_0763(parent_id);

CREATE TABLE stress.entity_0764 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0255(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0764_parent_idx ON stress.entity_0764(parent_id);

CREATE TABLE stress.entity_0765 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0255(id),
  owner_id BIGINT REFERENCES stress.entity_0758(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0765_parent_idx ON stress.entity_0765(parent_id);

CREATE INDEX entity_0765_owner_idx ON stress.entity_0765(owner_id);

CREATE TABLE stress.entity_0766 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0255(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0766_parent_idx ON stress.entity_0766(parent_id);

CREATE TABLE stress.entity_0767 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0256(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0767_parent_idx ON stress.entity_0767(parent_id);

CREATE TABLE stress.entity_0768 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0256(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0768_parent_idx ON stress.entity_0768(parent_id);

CREATE TABLE stress.entity_0769 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0256(id),
  owner_id BIGINT REFERENCES stress.entity_0762(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0769_parent_idx ON stress.entity_0769(parent_id);

CREATE INDEX entity_0769_owner_idx ON stress.entity_0769(owner_id);

CREATE TABLE stress.entity_0770 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0257(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0770_parent_idx ON stress.entity_0770(parent_id);

CREATE TABLE stress.entity_0771 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0257(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0771_parent_idx ON stress.entity_0771(parent_id);

CREATE TABLE stress.entity_0772 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0257(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0772_parent_idx ON stress.entity_0772(parent_id);

CREATE TABLE stress.entity_0773 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0258(id),
  owner_id BIGINT REFERENCES stress.entity_0766(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0773_parent_idx ON stress.entity_0773(parent_id);

CREATE INDEX entity_0773_owner_idx ON stress.entity_0773(owner_id);

CREATE TABLE stress.entity_0774 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0258(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0774_parent_idx ON stress.entity_0774(parent_id);

CREATE TABLE stress.entity_0775 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0258(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0775_parent_idx ON stress.entity_0775(parent_id);

CREATE TABLE stress.entity_0776 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0259(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0776_parent_idx ON stress.entity_0776(parent_id);

CREATE TABLE stress.entity_0777 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0259(id),
  owner_id BIGINT REFERENCES stress.entity_0770(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0777_parent_idx ON stress.entity_0777(parent_id);

CREATE INDEX entity_0777_owner_idx ON stress.entity_0777(owner_id);

CREATE TABLE stress.entity_0778 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0259(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0778_parent_idx ON stress.entity_0778(parent_id);

CREATE TABLE stress.entity_0779 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0260(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0779_parent_idx ON stress.entity_0779(parent_id);

CREATE TABLE stress.entity_0780 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0260(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0780_parent_idx ON stress.entity_0780(parent_id);

CREATE TABLE stress.entity_0781 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0260(id),
  owner_id BIGINT REFERENCES stress.entity_0774(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0781_parent_idx ON stress.entity_0781(parent_id);

CREATE INDEX entity_0781_owner_idx ON stress.entity_0781(owner_id);

CREATE TABLE stress.entity_0782 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0261(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0782_parent_idx ON stress.entity_0782(parent_id);

CREATE TABLE stress.entity_0783 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0261(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0783_parent_idx ON stress.entity_0783(parent_id);

CREATE TABLE stress.entity_0784 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0261(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0784_parent_idx ON stress.entity_0784(parent_id);

CREATE TABLE stress.entity_0785 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0262(id),
  owner_id BIGINT REFERENCES stress.entity_0778(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0785_parent_idx ON stress.entity_0785(parent_id);

CREATE INDEX entity_0785_owner_idx ON stress.entity_0785(owner_id);

CREATE TABLE stress.entity_0786 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0262(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0786_parent_idx ON stress.entity_0786(parent_id);

CREATE TABLE stress.entity_0787 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0262(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0787_parent_idx ON stress.entity_0787(parent_id);

CREATE TABLE stress.entity_0788 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0263(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0788_parent_idx ON stress.entity_0788(parent_id);

CREATE TABLE stress.entity_0789 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0263(id),
  owner_id BIGINT REFERENCES stress.entity_0782(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0789_parent_idx ON stress.entity_0789(parent_id);

CREATE INDEX entity_0789_owner_idx ON stress.entity_0789(owner_id);

CREATE TABLE stress.entity_0790 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0263(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0790_parent_idx ON stress.entity_0790(parent_id);

CREATE TABLE stress.entity_0791 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0264(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0791_parent_idx ON stress.entity_0791(parent_id);

CREATE TABLE stress.entity_0792 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0264(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0792_parent_idx ON stress.entity_0792(parent_id);

CREATE TABLE stress.entity_0793 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0264(id),
  owner_id BIGINT REFERENCES stress.entity_0786(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0793_parent_idx ON stress.entity_0793(parent_id);

CREATE INDEX entity_0793_owner_idx ON stress.entity_0793(owner_id);

CREATE TABLE stress.entity_0794 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0265(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0794_parent_idx ON stress.entity_0794(parent_id);

CREATE TABLE stress.entity_0795 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0265(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0795_parent_idx ON stress.entity_0795(parent_id);

CREATE TABLE stress.entity_0796 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0265(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0796_parent_idx ON stress.entity_0796(parent_id);

CREATE TABLE stress.entity_0797 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0266(id),
  owner_id BIGINT REFERENCES stress.entity_0790(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0797_parent_idx ON stress.entity_0797(parent_id);

CREATE INDEX entity_0797_owner_idx ON stress.entity_0797(owner_id);

CREATE TABLE stress.entity_0798 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0266(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0798_parent_idx ON stress.entity_0798(parent_id);

CREATE TABLE stress.entity_0799 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0266(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0799_parent_idx ON stress.entity_0799(parent_id);

CREATE TABLE stress.entity_0800 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0267(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0800_parent_idx ON stress.entity_0800(parent_id);

CREATE TABLE stress.entity_0801 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0267(id),
  owner_id BIGINT REFERENCES stress.entity_0794(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0801_parent_idx ON stress.entity_0801(parent_id);

CREATE INDEX entity_0801_owner_idx ON stress.entity_0801(owner_id);

CREATE TABLE stress.entity_0802 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0267(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0802_parent_idx ON stress.entity_0802(parent_id);

CREATE TABLE stress.entity_0803 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0268(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0803_parent_idx ON stress.entity_0803(parent_id);

CREATE TABLE stress.entity_0804 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0268(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0804_parent_idx ON stress.entity_0804(parent_id);

CREATE TABLE stress.entity_0805 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0268(id),
  owner_id BIGINT REFERENCES stress.entity_0798(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0805_parent_idx ON stress.entity_0805(parent_id);

CREATE INDEX entity_0805_owner_idx ON stress.entity_0805(owner_id);

CREATE TABLE stress.entity_0806 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0269(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0806_parent_idx ON stress.entity_0806(parent_id);

CREATE TABLE stress.entity_0807 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0269(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0807_parent_idx ON stress.entity_0807(parent_id);

CREATE TABLE stress.entity_0808 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0269(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0808_parent_idx ON stress.entity_0808(parent_id);

CREATE TABLE stress.entity_0809 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0270(id),
  owner_id BIGINT REFERENCES stress.entity_0802(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0809_parent_idx ON stress.entity_0809(parent_id);

CREATE INDEX entity_0809_owner_idx ON stress.entity_0809(owner_id);

CREATE TABLE stress.entity_0810 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0270(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0810_parent_idx ON stress.entity_0810(parent_id);

CREATE TABLE stress.entity_0811 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0270(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0811_parent_idx ON stress.entity_0811(parent_id);

CREATE TABLE stress.entity_0812 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0271(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0812_parent_idx ON stress.entity_0812(parent_id);

CREATE TABLE stress.entity_0813 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0271(id),
  owner_id BIGINT REFERENCES stress.entity_0806(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0813_parent_idx ON stress.entity_0813(parent_id);

CREATE INDEX entity_0813_owner_idx ON stress.entity_0813(owner_id);

CREATE TABLE stress.entity_0814 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0271(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0814_parent_idx ON stress.entity_0814(parent_id);

CREATE TABLE stress.entity_0815 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0272(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0815_parent_idx ON stress.entity_0815(parent_id);

CREATE TABLE stress.entity_0816 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0272(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0816_parent_idx ON stress.entity_0816(parent_id);

CREATE TABLE stress.entity_0817 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0272(id),
  owner_id BIGINT REFERENCES stress.entity_0810(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0817_parent_idx ON stress.entity_0817(parent_id);

CREATE INDEX entity_0817_owner_idx ON stress.entity_0817(owner_id);

CREATE TABLE stress.entity_0818 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0273(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0818_parent_idx ON stress.entity_0818(parent_id);

CREATE TABLE stress.entity_0819 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0273(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0819_parent_idx ON stress.entity_0819(parent_id);

CREATE TABLE stress.entity_0820 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0273(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0820_parent_idx ON stress.entity_0820(parent_id);

CREATE TABLE stress.entity_0821 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0274(id),
  owner_id BIGINT REFERENCES stress.entity_0814(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0821_parent_idx ON stress.entity_0821(parent_id);

CREATE INDEX entity_0821_owner_idx ON stress.entity_0821(owner_id);

CREATE TABLE stress.entity_0822 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0274(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0822_parent_idx ON stress.entity_0822(parent_id);

CREATE TABLE stress.entity_0823 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0274(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0823_parent_idx ON stress.entity_0823(parent_id);

CREATE TABLE stress.entity_0824 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0275(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0824_parent_idx ON stress.entity_0824(parent_id);

CREATE TABLE stress.entity_0825 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0275(id),
  owner_id BIGINT REFERENCES stress.entity_0818(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0825_parent_idx ON stress.entity_0825(parent_id);

CREATE INDEX entity_0825_owner_idx ON stress.entity_0825(owner_id);

CREATE TABLE stress.entity_0826 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0275(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0826_parent_idx ON stress.entity_0826(parent_id);

CREATE TABLE stress.entity_0827 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0276(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0827_parent_idx ON stress.entity_0827(parent_id);

CREATE TABLE stress.entity_0828 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0276(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0828_parent_idx ON stress.entity_0828(parent_id);

CREATE TABLE stress.entity_0829 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0276(id),
  owner_id BIGINT REFERENCES stress.entity_0822(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0829_parent_idx ON stress.entity_0829(parent_id);

CREATE INDEX entity_0829_owner_idx ON stress.entity_0829(owner_id);

CREATE TABLE stress.entity_0830 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0277(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0830_parent_idx ON stress.entity_0830(parent_id);

CREATE TABLE stress.entity_0831 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0277(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0831_parent_idx ON stress.entity_0831(parent_id);

CREATE TABLE stress.entity_0832 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0277(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0832_parent_idx ON stress.entity_0832(parent_id);

CREATE TABLE stress.entity_0833 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0278(id),
  owner_id BIGINT REFERENCES stress.entity_0826(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0833_parent_idx ON stress.entity_0833(parent_id);

CREATE INDEX entity_0833_owner_idx ON stress.entity_0833(owner_id);

CREATE TABLE stress.entity_0834 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0278(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0834_parent_idx ON stress.entity_0834(parent_id);

CREATE TABLE stress.entity_0835 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0278(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0835_parent_idx ON stress.entity_0835(parent_id);

CREATE TABLE stress.entity_0836 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0279(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0836_parent_idx ON stress.entity_0836(parent_id);

CREATE TABLE stress.entity_0837 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0279(id),
  owner_id BIGINT REFERENCES stress.entity_0830(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0837_parent_idx ON stress.entity_0837(parent_id);

CREATE INDEX entity_0837_owner_idx ON stress.entity_0837(owner_id);

CREATE TABLE stress.entity_0838 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0279(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0838_parent_idx ON stress.entity_0838(parent_id);

CREATE TABLE stress.entity_0839 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0280(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0839_parent_idx ON stress.entity_0839(parent_id);

CREATE TABLE stress.entity_0840 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0280(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0840_parent_idx ON stress.entity_0840(parent_id);

CREATE TABLE stress.entity_0841 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0280(id),
  owner_id BIGINT REFERENCES stress.entity_0834(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0841_parent_idx ON stress.entity_0841(parent_id);

CREATE INDEX entity_0841_owner_idx ON stress.entity_0841(owner_id);

CREATE TABLE stress.entity_0842 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0281(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0842_parent_idx ON stress.entity_0842(parent_id);

CREATE TABLE stress.entity_0843 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0281(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0843_parent_idx ON stress.entity_0843(parent_id);

CREATE TABLE stress.entity_0844 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0281(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0844_parent_idx ON stress.entity_0844(parent_id);

CREATE TABLE stress.entity_0845 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0282(id),
  owner_id BIGINT REFERENCES stress.entity_0838(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0845_parent_idx ON stress.entity_0845(parent_id);

CREATE INDEX entity_0845_owner_idx ON stress.entity_0845(owner_id);

CREATE TABLE stress.entity_0846 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0282(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0846_parent_idx ON stress.entity_0846(parent_id);

CREATE TABLE stress.entity_0847 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0282(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0847_parent_idx ON stress.entity_0847(parent_id);

CREATE TABLE stress.entity_0848 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0283(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0848_parent_idx ON stress.entity_0848(parent_id);

CREATE TABLE stress.entity_0849 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0283(id),
  owner_id BIGINT REFERENCES stress.entity_0842(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0849_parent_idx ON stress.entity_0849(parent_id);

CREATE INDEX entity_0849_owner_idx ON stress.entity_0849(owner_id);

CREATE TABLE stress.entity_0850 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0283(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0850_parent_idx ON stress.entity_0850(parent_id);

CREATE TABLE stress.entity_0851 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0284(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0851_parent_idx ON stress.entity_0851(parent_id);

CREATE TABLE stress.entity_0852 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0284(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0852_parent_idx ON stress.entity_0852(parent_id);

CREATE TABLE stress.entity_0853 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0284(id),
  owner_id BIGINT REFERENCES stress.entity_0846(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0853_parent_idx ON stress.entity_0853(parent_id);

CREATE INDEX entity_0853_owner_idx ON stress.entity_0853(owner_id);

CREATE TABLE stress.entity_0854 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0285(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0854_parent_idx ON stress.entity_0854(parent_id);

CREATE TABLE stress.entity_0855 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0285(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0855_parent_idx ON stress.entity_0855(parent_id);

CREATE TABLE stress.entity_0856 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0285(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0856_parent_idx ON stress.entity_0856(parent_id);

CREATE TABLE stress.entity_0857 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0286(id),
  owner_id BIGINT REFERENCES stress.entity_0850(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0857_parent_idx ON stress.entity_0857(parent_id);

CREATE INDEX entity_0857_owner_idx ON stress.entity_0857(owner_id);

CREATE TABLE stress.entity_0858 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0286(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0858_parent_idx ON stress.entity_0858(parent_id);

CREATE TABLE stress.entity_0859 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0286(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0859_parent_idx ON stress.entity_0859(parent_id);

CREATE TABLE stress.entity_0860 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0287(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0860_parent_idx ON stress.entity_0860(parent_id);

CREATE TABLE stress.entity_0861 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0287(id),
  owner_id BIGINT REFERENCES stress.entity_0854(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0861_parent_idx ON stress.entity_0861(parent_id);

CREATE INDEX entity_0861_owner_idx ON stress.entity_0861(owner_id);

CREATE TABLE stress.entity_0862 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0287(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0862_parent_idx ON stress.entity_0862(parent_id);

CREATE TABLE stress.entity_0863 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0288(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0863_parent_idx ON stress.entity_0863(parent_id);

CREATE TABLE stress.entity_0864 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0288(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0864_parent_idx ON stress.entity_0864(parent_id);

CREATE TABLE stress.entity_0865 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0288(id),
  owner_id BIGINT REFERENCES stress.entity_0858(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0865_parent_idx ON stress.entity_0865(parent_id);

CREATE INDEX entity_0865_owner_idx ON stress.entity_0865(owner_id);

CREATE TABLE stress.entity_0866 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0289(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0866_parent_idx ON stress.entity_0866(parent_id);

CREATE TABLE stress.entity_0867 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0289(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0867_parent_idx ON stress.entity_0867(parent_id);

CREATE TABLE stress.entity_0868 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0289(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0868_parent_idx ON stress.entity_0868(parent_id);

CREATE TABLE stress.entity_0869 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0290(id),
  owner_id BIGINT REFERENCES stress.entity_0862(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0869_parent_idx ON stress.entity_0869(parent_id);

CREATE INDEX entity_0869_owner_idx ON stress.entity_0869(owner_id);

CREATE TABLE stress.entity_0870 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0290(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0870_parent_idx ON stress.entity_0870(parent_id);

CREATE TABLE stress.entity_0871 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0290(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0871_parent_idx ON stress.entity_0871(parent_id);

CREATE TABLE stress.entity_0872 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0291(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0872_parent_idx ON stress.entity_0872(parent_id);

CREATE TABLE stress.entity_0873 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0291(id),
  owner_id BIGINT REFERENCES stress.entity_0866(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0873_parent_idx ON stress.entity_0873(parent_id);

CREATE INDEX entity_0873_owner_idx ON stress.entity_0873(owner_id);

CREATE TABLE stress.entity_0874 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0291(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0874_parent_idx ON stress.entity_0874(parent_id);

CREATE TABLE stress.entity_0875 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0292(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0875_parent_idx ON stress.entity_0875(parent_id);

CREATE TABLE stress.entity_0876 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0292(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0876_parent_idx ON stress.entity_0876(parent_id);

CREATE TABLE stress.entity_0877 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0292(id),
  owner_id BIGINT REFERENCES stress.entity_0870(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0877_parent_idx ON stress.entity_0877(parent_id);

CREATE INDEX entity_0877_owner_idx ON stress.entity_0877(owner_id);

CREATE TABLE stress.entity_0878 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0293(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0878_parent_idx ON stress.entity_0878(parent_id);

CREATE TABLE stress.entity_0879 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0293(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0879_parent_idx ON stress.entity_0879(parent_id);

CREATE TABLE stress.entity_0880 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0293(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0880_parent_idx ON stress.entity_0880(parent_id);

CREATE TABLE stress.entity_0881 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0294(id),
  owner_id BIGINT REFERENCES stress.entity_0874(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0881_parent_idx ON stress.entity_0881(parent_id);

CREATE INDEX entity_0881_owner_idx ON stress.entity_0881(owner_id);

CREATE TABLE stress.entity_0882 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0294(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0882_parent_idx ON stress.entity_0882(parent_id);

CREATE TABLE stress.entity_0883 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0294(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0883_parent_idx ON stress.entity_0883(parent_id);

CREATE TABLE stress.entity_0884 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0295(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0884_parent_idx ON stress.entity_0884(parent_id);

CREATE TABLE stress.entity_0885 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0295(id),
  owner_id BIGINT REFERENCES stress.entity_0878(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0885_parent_idx ON stress.entity_0885(parent_id);

CREATE INDEX entity_0885_owner_idx ON stress.entity_0885(owner_id);

CREATE TABLE stress.entity_0886 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0295(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0886_parent_idx ON stress.entity_0886(parent_id);

CREATE TABLE stress.entity_0887 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0296(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0887_parent_idx ON stress.entity_0887(parent_id);

CREATE TABLE stress.entity_0888 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0296(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0888_parent_idx ON stress.entity_0888(parent_id);

CREATE TABLE stress.entity_0889 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0296(id),
  owner_id BIGINT REFERENCES stress.entity_0882(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0889_parent_idx ON stress.entity_0889(parent_id);

CREATE INDEX entity_0889_owner_idx ON stress.entity_0889(owner_id);

CREATE TABLE stress.entity_0890 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0297(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0890_parent_idx ON stress.entity_0890(parent_id);

CREATE TABLE stress.entity_0891 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0297(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0891_parent_idx ON stress.entity_0891(parent_id);

CREATE TABLE stress.entity_0892 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0297(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0892_parent_idx ON stress.entity_0892(parent_id);

CREATE TABLE stress.entity_0893 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0298(id),
  owner_id BIGINT REFERENCES stress.entity_0886(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0893_parent_idx ON stress.entity_0893(parent_id);

CREATE INDEX entity_0893_owner_idx ON stress.entity_0893(owner_id);

CREATE TABLE stress.entity_0894 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0298(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0894_parent_idx ON stress.entity_0894(parent_id);

CREATE TABLE stress.entity_0895 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0298(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0895_parent_idx ON stress.entity_0895(parent_id);

CREATE TABLE stress.entity_0896 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0299(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0896_parent_idx ON stress.entity_0896(parent_id);

CREATE TABLE stress.entity_0897 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0299(id),
  owner_id BIGINT REFERENCES stress.entity_0890(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0897_parent_idx ON stress.entity_0897(parent_id);

CREATE INDEX entity_0897_owner_idx ON stress.entity_0897(owner_id);

CREATE TABLE stress.entity_0898 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0299(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0898_parent_idx ON stress.entity_0898(parent_id);

CREATE TABLE stress.entity_0899 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0300(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0899_parent_idx ON stress.entity_0899(parent_id);

CREATE TABLE stress.entity_0900 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0300(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0900_parent_idx ON stress.entity_0900(parent_id);

CREATE TABLE stress.entity_0901 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0300(id),
  owner_id BIGINT REFERENCES stress.entity_0894(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0901_parent_idx ON stress.entity_0901(parent_id);

CREATE INDEX entity_0901_owner_idx ON stress.entity_0901(owner_id);

CREATE TABLE stress.entity_0902 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0301(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0902_parent_idx ON stress.entity_0902(parent_id);

CREATE TABLE stress.entity_0903 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0301(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0903_parent_idx ON stress.entity_0903(parent_id);

CREATE TABLE stress.entity_0904 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0301(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0904_parent_idx ON stress.entity_0904(parent_id);

CREATE TABLE stress.entity_0905 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0302(id),
  owner_id BIGINT REFERENCES stress.entity_0898(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0905_parent_idx ON stress.entity_0905(parent_id);

CREATE INDEX entity_0905_owner_idx ON stress.entity_0905(owner_id);

CREATE TABLE stress.entity_0906 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0302(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0906_parent_idx ON stress.entity_0906(parent_id);

CREATE TABLE stress.entity_0907 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0302(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0907_parent_idx ON stress.entity_0907(parent_id);

CREATE TABLE stress.entity_0908 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0303(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0908_parent_idx ON stress.entity_0908(parent_id);

CREATE TABLE stress.entity_0909 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0303(id),
  owner_id BIGINT REFERENCES stress.entity_0902(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0909_parent_idx ON stress.entity_0909(parent_id);

CREATE INDEX entity_0909_owner_idx ON stress.entity_0909(owner_id);

CREATE TABLE stress.entity_0910 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0303(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0910_parent_idx ON stress.entity_0910(parent_id);

CREATE TABLE stress.entity_0911 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0304(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0911_parent_idx ON stress.entity_0911(parent_id);

CREATE TABLE stress.entity_0912 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0304(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0912_parent_idx ON stress.entity_0912(parent_id);

CREATE TABLE stress.entity_0913 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0304(id),
  owner_id BIGINT REFERENCES stress.entity_0906(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0913_parent_idx ON stress.entity_0913(parent_id);

CREATE INDEX entity_0913_owner_idx ON stress.entity_0913(owner_id);

CREATE TABLE stress.entity_0914 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0305(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0914_parent_idx ON stress.entity_0914(parent_id);

CREATE TABLE stress.entity_0915 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0305(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0915_parent_idx ON stress.entity_0915(parent_id);

CREATE TABLE stress.entity_0916 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0305(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0916_parent_idx ON stress.entity_0916(parent_id);

CREATE TABLE stress.entity_0917 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0306(id),
  owner_id BIGINT REFERENCES stress.entity_0910(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0917_parent_idx ON stress.entity_0917(parent_id);

CREATE INDEX entity_0917_owner_idx ON stress.entity_0917(owner_id);

CREATE TABLE stress.entity_0918 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0306(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0918_parent_idx ON stress.entity_0918(parent_id);

CREATE TABLE stress.entity_0919 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0306(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0919_parent_idx ON stress.entity_0919(parent_id);

CREATE TABLE stress.entity_0920 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0307(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0920_parent_idx ON stress.entity_0920(parent_id);

CREATE TABLE stress.entity_0921 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0307(id),
  owner_id BIGINT REFERENCES stress.entity_0914(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0921_parent_idx ON stress.entity_0921(parent_id);

CREATE INDEX entity_0921_owner_idx ON stress.entity_0921(owner_id);

CREATE TABLE stress.entity_0922 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0307(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0922_parent_idx ON stress.entity_0922(parent_id);

CREATE TABLE stress.entity_0923 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0308(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0923_parent_idx ON stress.entity_0923(parent_id);

CREATE TABLE stress.entity_0924 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0308(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0924_parent_idx ON stress.entity_0924(parent_id);

CREATE TABLE stress.entity_0925 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0308(id),
  owner_id BIGINT REFERENCES stress.entity_0918(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0925_parent_idx ON stress.entity_0925(parent_id);

CREATE INDEX entity_0925_owner_idx ON stress.entity_0925(owner_id);

CREATE TABLE stress.entity_0926 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0309(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0926_parent_idx ON stress.entity_0926(parent_id);

CREATE TABLE stress.entity_0927 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0309(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0927_parent_idx ON stress.entity_0927(parent_id);

CREATE TABLE stress.entity_0928 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0309(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0928_parent_idx ON stress.entity_0928(parent_id);

CREATE TABLE stress.entity_0929 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0310(id),
  owner_id BIGINT REFERENCES stress.entity_0922(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0929_parent_idx ON stress.entity_0929(parent_id);

CREATE INDEX entity_0929_owner_idx ON stress.entity_0929(owner_id);

CREATE TABLE stress.entity_0930 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0310(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0930_parent_idx ON stress.entity_0930(parent_id);

CREATE TABLE stress.entity_0931 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0310(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0931_parent_idx ON stress.entity_0931(parent_id);

CREATE TABLE stress.entity_0932 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0311(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0932_parent_idx ON stress.entity_0932(parent_id);

CREATE TABLE stress.entity_0933 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0311(id),
  owner_id BIGINT REFERENCES stress.entity_0926(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0933_parent_idx ON stress.entity_0933(parent_id);

CREATE INDEX entity_0933_owner_idx ON stress.entity_0933(owner_id);

CREATE TABLE stress.entity_0934 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0311(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0934_parent_idx ON stress.entity_0934(parent_id);

CREATE TABLE stress.entity_0935 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0312(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0935_parent_idx ON stress.entity_0935(parent_id);

CREATE TABLE stress.entity_0936 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0312(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0936_parent_idx ON stress.entity_0936(parent_id);

CREATE TABLE stress.entity_0937 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0312(id),
  owner_id BIGINT REFERENCES stress.entity_0930(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0937_parent_idx ON stress.entity_0937(parent_id);

CREATE INDEX entity_0937_owner_idx ON stress.entity_0937(owner_id);

CREATE TABLE stress.entity_0938 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0313(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0938_parent_idx ON stress.entity_0938(parent_id);

CREATE TABLE stress.entity_0939 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0313(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0939_parent_idx ON stress.entity_0939(parent_id);

CREATE TABLE stress.entity_0940 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0313(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0940_parent_idx ON stress.entity_0940(parent_id);

CREATE TABLE stress.entity_0941 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0314(id),
  owner_id BIGINT REFERENCES stress.entity_0934(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0941_parent_idx ON stress.entity_0941(parent_id);

CREATE INDEX entity_0941_owner_idx ON stress.entity_0941(owner_id);

CREATE TABLE stress.entity_0942 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0314(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0942_parent_idx ON stress.entity_0942(parent_id);

CREATE TABLE stress.entity_0943 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0314(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0943_parent_idx ON stress.entity_0943(parent_id);

CREATE TABLE stress.entity_0944 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0315(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0944_parent_idx ON stress.entity_0944(parent_id);

CREATE TABLE stress.entity_0945 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0315(id),
  owner_id BIGINT REFERENCES stress.entity_0938(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0945_parent_idx ON stress.entity_0945(parent_id);

CREATE INDEX entity_0945_owner_idx ON stress.entity_0945(owner_id);

CREATE TABLE stress.entity_0946 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0315(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0946_parent_idx ON stress.entity_0946(parent_id);

CREATE TABLE stress.entity_0947 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0316(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0947_parent_idx ON stress.entity_0947(parent_id);

CREATE TABLE stress.entity_0948 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0316(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0948_parent_idx ON stress.entity_0948(parent_id);

CREATE TABLE stress.entity_0949 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0316(id),
  owner_id BIGINT REFERENCES stress.entity_0942(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0949_parent_idx ON stress.entity_0949(parent_id);

CREATE INDEX entity_0949_owner_idx ON stress.entity_0949(owner_id);

CREATE TABLE stress.entity_0950 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0317(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0950_parent_idx ON stress.entity_0950(parent_id);

CREATE TABLE stress.entity_0951 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0317(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0951_parent_idx ON stress.entity_0951(parent_id);

CREATE TABLE stress.entity_0952 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0317(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0952_parent_idx ON stress.entity_0952(parent_id);

CREATE TABLE stress.entity_0953 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0318(id),
  owner_id BIGINT REFERENCES stress.entity_0946(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0953_parent_idx ON stress.entity_0953(parent_id);

CREATE INDEX entity_0953_owner_idx ON stress.entity_0953(owner_id);

CREATE TABLE stress.entity_0954 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0318(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0954_parent_idx ON stress.entity_0954(parent_id);

CREATE TABLE stress.entity_0955 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0318(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0955_parent_idx ON stress.entity_0955(parent_id);

CREATE TABLE stress.entity_0956 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0319(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0956_parent_idx ON stress.entity_0956(parent_id);

CREATE TABLE stress.entity_0957 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0319(id),
  owner_id BIGINT REFERENCES stress.entity_0950(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0957_parent_idx ON stress.entity_0957(parent_id);

CREATE INDEX entity_0957_owner_idx ON stress.entity_0957(owner_id);

CREATE TABLE stress.entity_0958 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0319(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0958_parent_idx ON stress.entity_0958(parent_id);

CREATE TABLE stress.entity_0959 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0320(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0959_parent_idx ON stress.entity_0959(parent_id);

CREATE TABLE stress.entity_0960 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0320(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0960_parent_idx ON stress.entity_0960(parent_id);

CREATE TABLE stress.entity_0961 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0320(id),
  owner_id BIGINT REFERENCES stress.entity_0954(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0961_parent_idx ON stress.entity_0961(parent_id);

CREATE INDEX entity_0961_owner_idx ON stress.entity_0961(owner_id);

CREATE TABLE stress.entity_0962 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0321(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0962_parent_idx ON stress.entity_0962(parent_id);

CREATE TABLE stress.entity_0963 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0321(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0963_parent_idx ON stress.entity_0963(parent_id);

CREATE TABLE stress.entity_0964 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0321(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0964_parent_idx ON stress.entity_0964(parent_id);

CREATE TABLE stress.entity_0965 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0322(id),
  owner_id BIGINT REFERENCES stress.entity_0958(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0965_parent_idx ON stress.entity_0965(parent_id);

CREATE INDEX entity_0965_owner_idx ON stress.entity_0965(owner_id);

CREATE TABLE stress.entity_0966 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0322(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0966_parent_idx ON stress.entity_0966(parent_id);

CREATE TABLE stress.entity_0967 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0322(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0967_parent_idx ON stress.entity_0967(parent_id);

CREATE TABLE stress.entity_0968 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0323(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0968_parent_idx ON stress.entity_0968(parent_id);

CREATE TABLE stress.entity_0969 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0323(id),
  owner_id BIGINT REFERENCES stress.entity_0962(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0969_parent_idx ON stress.entity_0969(parent_id);

CREATE INDEX entity_0969_owner_idx ON stress.entity_0969(owner_id);

CREATE TABLE stress.entity_0970 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0323(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0970_parent_idx ON stress.entity_0970(parent_id);

CREATE TABLE stress.entity_0971 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0324(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0971_parent_idx ON stress.entity_0971(parent_id);

CREATE TABLE stress.entity_0972 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0324(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0972_parent_idx ON stress.entity_0972(parent_id);

CREATE TABLE stress.entity_0973 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0324(id),
  owner_id BIGINT REFERENCES stress.entity_0966(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0973_parent_idx ON stress.entity_0973(parent_id);

CREATE INDEX entity_0973_owner_idx ON stress.entity_0973(owner_id);

CREATE TABLE stress.entity_0974 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0325(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0974_parent_idx ON stress.entity_0974(parent_id);

CREATE TABLE stress.entity_0975 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0325(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0975_parent_idx ON stress.entity_0975(parent_id);

CREATE TABLE stress.entity_0976 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0325(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0976_parent_idx ON stress.entity_0976(parent_id);

CREATE TABLE stress.entity_0977 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0326(id),
  owner_id BIGINT REFERENCES stress.entity_0970(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0977_parent_idx ON stress.entity_0977(parent_id);

CREATE INDEX entity_0977_owner_idx ON stress.entity_0977(owner_id);

CREATE TABLE stress.entity_0978 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0326(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0978_parent_idx ON stress.entity_0978(parent_id);

CREATE TABLE stress.entity_0979 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0326(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0979_parent_idx ON stress.entity_0979(parent_id);

CREATE TABLE stress.entity_0980 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0327(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0980_parent_idx ON stress.entity_0980(parent_id);

CREATE TABLE stress.entity_0981 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0327(id),
  owner_id BIGINT REFERENCES stress.entity_0974(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0981_parent_idx ON stress.entity_0981(parent_id);

CREATE INDEX entity_0981_owner_idx ON stress.entity_0981(owner_id);

CREATE TABLE stress.entity_0982 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0327(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0982_parent_idx ON stress.entity_0982(parent_id);

CREATE TABLE stress.entity_0983 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0328(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0983_parent_idx ON stress.entity_0983(parent_id);

CREATE TABLE stress.entity_0984 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0328(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0984_parent_idx ON stress.entity_0984(parent_id);

CREATE TABLE stress.entity_0985 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0328(id),
  owner_id BIGINT REFERENCES stress.entity_0978(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0985_parent_idx ON stress.entity_0985(parent_id);

CREATE INDEX entity_0985_owner_idx ON stress.entity_0985(owner_id);

CREATE TABLE stress.entity_0986 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0329(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0986_parent_idx ON stress.entity_0986(parent_id);

CREATE TABLE stress.entity_0987 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0329(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0987_parent_idx ON stress.entity_0987(parent_id);

CREATE TABLE stress.entity_0988 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0329(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0988_parent_idx ON stress.entity_0988(parent_id);

CREATE TABLE stress.entity_0989 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0330(id),
  owner_id BIGINT REFERENCES stress.entity_0982(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0989_parent_idx ON stress.entity_0989(parent_id);

CREATE INDEX entity_0989_owner_idx ON stress.entity_0989(owner_id);

CREATE TABLE stress.entity_0990 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0330(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0990_parent_idx ON stress.entity_0990(parent_id);

CREATE TABLE stress.entity_0991 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0330(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0991_parent_idx ON stress.entity_0991(parent_id);

CREATE TABLE stress.entity_0992 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0331(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0992_parent_idx ON stress.entity_0992(parent_id);

CREATE TABLE stress.entity_0993 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0331(id),
  owner_id BIGINT REFERENCES stress.entity_0986(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0993_parent_idx ON stress.entity_0993(parent_id);

CREATE INDEX entity_0993_owner_idx ON stress.entity_0993(owner_id);

CREATE TABLE stress.entity_0994 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0331(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0994_parent_idx ON stress.entity_0994(parent_id);

CREATE TABLE stress.entity_0995 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0332(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0995_parent_idx ON stress.entity_0995(parent_id);

CREATE TABLE stress.entity_0996 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0332(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0996_parent_idx ON stress.entity_0996(parent_id);

CREATE TABLE stress.entity_0997 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0332(id),
  owner_id BIGINT REFERENCES stress.entity_0990(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0997_parent_idx ON stress.entity_0997(parent_id);

CREATE INDEX entity_0997_owner_idx ON stress.entity_0997(owner_id);

CREATE TABLE stress.entity_0998 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0333(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0998_parent_idx ON stress.entity_0998(parent_id);

CREATE TABLE stress.entity_0999 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0333(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_0999_parent_idx ON stress.entity_0999(parent_id);

CREATE TABLE stress.entity_1000 (
  id BIGINT PRIMARY KEY,
  parent_id BIGINT REFERENCES stress.entity_0333(id),
  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);

CREATE INDEX entity_1000_parent_idx ON stress.entity_1000(parent_id);
