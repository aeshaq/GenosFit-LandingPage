-- Run in Supabase SQL editor
create table if not exists waitlist (
  id uuid primary key default gen_random_uuid(),
  email text unique not null,
  created_at timestamptz default now(),
  source text,
  referrer text,
  utm_campaign text,
  utm_source text,
  utm_medium text
);

-- Optional: enable RLS and create policies if you switch to anon inserts
-- alter table waitlist enable row level security;
