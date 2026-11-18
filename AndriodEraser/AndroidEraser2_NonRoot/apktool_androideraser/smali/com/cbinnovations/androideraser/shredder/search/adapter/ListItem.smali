.class public Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;
    }
.end annotation


# instance fields
.field private viewType:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewType()Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->viewType:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    return-object v0
.end method

.method public isChild()Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->viewType:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->viewType:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->viewType:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    return-void
.end method
