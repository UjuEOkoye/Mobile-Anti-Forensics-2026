.class public Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;
.super Ljava/lang/Object;
.source "SelectedData.java"


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

.field public max:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public maxMemory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public skipped:Z


# direct methods
.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->skipped:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 36
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->skipped:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 41
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    .line 42
    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->skipped:Z

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;[Ljava/lang/Object;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->skipped:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    .line 24
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;[Ljava/lang/Object;Z)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->skipped:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    .line 30
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->skipped:Z

    return-void
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 3

    .line 46
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 47
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public expand(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getSize(I)I
    .locals 12

    .line 56
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->completeErase:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->apk:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->download:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->photos:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->cache:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->emptyFolder:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->faceRecognize:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->appResidues:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->whatsapp:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->thumbnails:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->file:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    .line 115
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int v0, v0, p1

    return v0

    .line 57
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 65
    check-cast v3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    .line 66
    iget-object v4, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    sget-object v5, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-ne v4, v5, :cond_5

    .line 67
    iget-object v3, v3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/Storage;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v3

    long-to-double v5, v3

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double v5, v5, v7

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    sub-long v7, v3, v5

    const-wide/32 v9, 0x12c00000

    cmp-long v11, v7, v9

    if-ltz v11, :cond_6

    sub-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_4

    goto :goto_3

    :cond_4
    move-wide v5, v3

    goto :goto_3

    .line 87
    :cond_5
    iget-object v3, v3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/Storage;->getTotalSize(Ljava/lang/String;)J

    move-result-wide v5

    .line 91
    :cond_6
    :goto_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 92
    new-array v3, v4, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const v4, 0xc350

    :goto_4
    int-to-long v7, v4

    .line 100
    :try_start_1
    div-long v7, v5, v7

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const/16 v4, 0x2710

    int-to-long v7, v4

    .line 103
    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    :goto_5
    double-to-int v3, v5

    mul-int v3, v3, p1

    add-int/2addr v2, v3

    .line 107
    iget-object v5, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    return v2
.end method
