.class public Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;
.super Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;
.source "GroupItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;,
        Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;,
        Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;
    }
.end annotation


# instance fields
.field private mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

.field private final mGroupHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

.field private mGroupHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private final mStatusHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;


# direct methods
.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 24
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mGroupHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 25
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;Z)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 31
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mGroupHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 32
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 33
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method


# virtual methods
.method public getChildItem(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getChildItemCount()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getChildItems()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    return-object v0
.end method

.method public getGroupHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mGroupHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    return-object v0
.end method

.method public getGroupHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mGroupHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public getStatusHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iScanning()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActivated()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setChildItems([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 6

    .line 123
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 127
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v4

    sget-object v5, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v3

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItemCount()I

    move-result p1

    if-eq v2, p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGroupHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mGroupHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public setScanned()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->hasScanned:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScanning()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldCheck()Z
    .locals 9

    .line 64
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mChildItems:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    .line 67
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v7

    sget-object v8, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v7, v8, :cond_2

    .line 68
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getSelectedChildItemCount()I

    move-result v7

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildItemCount()I

    move-result v6

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v5

    sget-object v7, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v5, v7, :cond_3

    .line 70
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->hasSelectedChildItems()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v5

    :cond_5
    return v1
.end method

.method public shouldScan()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
