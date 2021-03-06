-- begin BLOG_AUTHOR
alter table BLOG_AUTHOR add constraint FK_BLOG_AUTHOR_ON_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_BLOG_AUTHOR_ON_USER on BLOG_AUTHOR (USER_ID)^
-- end BLOG_AUTHOR
-- begin BLOG_COMMENT
alter table BLOG_COMMENT add constraint FK_BLOG_COMMENT_ON_PUBLICATION foreign key (PUBLICATION_ID) references BLOG_PUBLICATION(ID)^
alter table BLOG_COMMENT add constraint FK_BLOG_COMMENT_ON_PARENT foreign key (PARENT_ID) references BLOG_COMMENT(ID)^
alter table BLOG_COMMENT add constraint FK_BLOG_COMMENT_ON_AUTHOR foreign key (AUTHOR_ID) references SEC_USER(ID)^
create index IDX_BLOG_COMMENT_ON_PUBLICATION on BLOG_COMMENT (PUBLICATION_ID)^
create index IDX_BLOG_COMMENT_ON_PARENT on BLOG_COMMENT (PARENT_ID)^
create index IDX_BLOG_COMMENT_ON_AUTHOR on BLOG_COMMENT (AUTHOR_ID)^
-- end BLOG_COMMENT
-- begin BLOG_PUBLICATION
alter table BLOG_PUBLICATION add constraint FK_BLOG_PUBLICATION_ON_CATEGORY foreign key (CATEGORY_ID) references BLOG_CATEGORY(ID)^
create index IDX_BLOG_PUBLICATION_ON_CATEGORY on BLOG_PUBLICATION (CATEGORY_ID)^
-- end BLOG_PUBLICATION
-- begin BLOG_RATE
alter table BLOG_RATE add constraint FK_BLOG_RATE_ON_AUTHOR foreign key (AUTHOR_ID) references SEC_USER(ID)^
create index IDX_BLOG_RATE_ON_AUTHOR on BLOG_RATE (AUTHOR_ID)^
-- end BLOG_RATE
-- begin COMMENT_RATE_LINK
alter table COMMENT_RATE_LINK add constraint FK_COMRAT_ON_COMMENT foreign key (COMMENT_ID) references BLOG_COMMENT(ID)^
alter table COMMENT_RATE_LINK add constraint FK_COMRAT_ON_RATE foreign key (RATE_ID) references BLOG_RATE(ID)^
-- end COMMENT_RATE_LINK
-- begin PUBLICATION_TAG_LINK
alter table PUBLICATION_TAG_LINK add constraint FK_PUBTAG_ON_PUBLICATION foreign key (PUBLICATION_ID) references BLOG_PUBLICATION(ID)^
alter table PUBLICATION_TAG_LINK add constraint FK_PUBTAG_ON_TAG foreign key (TAG_ID) references BLOG_TAG(ID)^
-- end PUBLICATION_TAG_LINK
-- begin PUBLICATION_RATE_LINK
alter table PUBLICATION_RATE_LINK add constraint FK_PUBRAT_ON_PUBLICATION foreign key (PUBLICATION_ID) references BLOG_PUBLICATION(ID)^
alter table PUBLICATION_RATE_LINK add constraint FK_PUBRAT_ON_RATE foreign key (RATE_ID) references BLOG_RATE(ID)^
-- end PUBLICATION_RATE_LINK
