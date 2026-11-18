.class public interface abstract Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;
.super Ljava/lang/Object;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/DataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataAdapterListener"
.end annotation


# virtual methods
.method public abstract onChildChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;ZZ)V
.end method

.method public abstract onChildClicked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
.end method

.method public abstract onGroupChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Z)V
.end method

.method public abstract onGroupClicked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
.end method
