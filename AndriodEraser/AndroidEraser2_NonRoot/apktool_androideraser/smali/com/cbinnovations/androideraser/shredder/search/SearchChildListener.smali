.class public Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;
.super Ljava/lang/Object;
.source "SearchChildListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;
    }
.end annotation


# instance fields
.field public onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasSearchListener()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnSearchListener(Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    return-void
.end method
