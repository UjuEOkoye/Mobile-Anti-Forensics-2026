.class public interface abstract Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;
.super Ljava/lang/Object;
.source "SearchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/SearchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSearchListener"
.end annotation


# virtual methods
.method public abstract onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V
.end method

.method public abstract onSearchStarted()V
.end method

.method public abstract onSearchStopped()V
.end method
