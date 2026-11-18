.class public Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field public final pos:I

.field public final readonly:Z

.field public final removable:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 90
    iput-boolean p2, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->readonly:Z

    .line 91
    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->removable:Z

    .line 92
    iput p4, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->pos:I

    return-void
.end method


# virtual methods
.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget-boolean v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->removable:Z

    if-nez v1, :cond_0

    const v1, 0x7f11009d

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const v1, 0x7f11013b

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->pos:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    const-string v1, "/storage/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    return-object v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
