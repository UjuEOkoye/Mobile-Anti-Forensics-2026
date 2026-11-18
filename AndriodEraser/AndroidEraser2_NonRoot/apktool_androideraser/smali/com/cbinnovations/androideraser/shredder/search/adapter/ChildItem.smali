.class public Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
.super Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;
.source "ChildItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;,
        Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    }
.end annotation


# instance fields
.field private mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

.field private final mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

.field private mChildHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mOpenable:Z

.field private final mPermission:[Ljava/lang/String;

.field private mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

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

.field private scanButSelected:Z

.field private size:J


# direct methods
.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->size:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    .line 42
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mOpenable:Z

    .line 46
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 47
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 48
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mPermission:[Ljava/lang/String;

    .line 49
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;Z)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->size:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    .line 53
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 54
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 55
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mPermission:[Ljava/lang/String;

    .line 56
    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mOpenable:Z

    .line 57
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->size:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    .line 42
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mOpenable:Z

    .line 61
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 62
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 63
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mPermission:[Ljava/lang/String;

    .line 64
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;Z)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 39
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->size:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    .line 68
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 69
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 70
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mPermission:[Ljava/lang/String;

    .line 71
    iput-boolean p4, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mOpenable:Z

    .line 72
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method public static sizeOf([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 78
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 79
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getChildData(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 199
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildData(II)Ljava/lang/Object;
    .locals 1

    .line 205
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildData(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 207
    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildData()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    return-object v0
.end method

.method public getChildHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    return-object v0
.end method

.method public getChildHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public getChildItemCount()I
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 238
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 239
    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public getPermission()[Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mPermission:[Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-object v0
.end method

.method public getSelectedByteSize()J
    .locals 8

    .line 218
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->completeErase:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-ne v0, v3, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 226
    invoke-virtual {v5}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 227
    iget-object v7, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-static {v7, v6}, Lcom/cbinnovations/androideraser/shredder/Storage;->getObjectSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)J

    move-result-wide v6

    add-long/2addr v1, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v1

    .line 223
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getTotalByteSize()J

    move-result-wide v0

    return-wide v0

    :cond_5
    return-wide v1
.end method

.method public getSelectedChildItemCount()I
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 248
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 249
    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getSelectedItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public getSelectedData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    if-eqz v1, :cond_0

    .line 258
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 259
    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTotalByteSize()J
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    .line 214
    :cond_0
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->size:J

    return-wide v0
.end method

.method public getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    return-object v0
.end method

.method public hasSelectedChildItems()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getSelectedChildItemCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public iScanning()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpenable()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mOpenable:Z

    return v0
.end method

.method public selectAll()V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    if-eqz v0, :cond_1

    .line 95
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 96
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectAll()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 3

    .line 187
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->sizeOf([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-static {v0, p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getChildItemSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->size:J

    .line 189
    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHeader:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->setHeaderText(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    .line 191
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-void

    .line 193
    :cond_0
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->nothingFound:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-void
.end method

.method public setChildHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-void
.end method

.method public setScanned()V
    .locals 2

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    .line 144
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->hasScanned:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScanning()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldScan()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mReason:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unselectAll()V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 105
    iput-boolean v2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->scanButSelected:Z

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->mChildData:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    if-eqz v0, :cond_1

    .line 108
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->unselectAll()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
