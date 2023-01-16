--creating indexes for query optimization
create index hopsital_state_idx
on hospital(state);

create bitmap index claim_status_idx
on claim(status);

select * from hospital where state = 'TEXAS';

select * from POLICY
INNER JOIN CLAIM
USING(POLICY_NO)
where status = 'REJECTED';


