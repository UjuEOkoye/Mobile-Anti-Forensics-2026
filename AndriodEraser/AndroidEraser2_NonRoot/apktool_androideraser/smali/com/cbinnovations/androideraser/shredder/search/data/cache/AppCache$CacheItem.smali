.class public Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;
.super Ljava/lang/Object;
.source "AppCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheItem"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private isFile:Z

.field private path:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->isFile:Z

    .line 209
    iput-wide p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->size:J

    .line 210
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->path:Ljava/lang/String;

    .line 211
    iput-object p4, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->appName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 201
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->size:J

    .line 204
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->isFile:Z

    .line 205
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->size:J

    return-wide v0
.end method

.method public isFile()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->isFile:Z

    return v0
.end method
