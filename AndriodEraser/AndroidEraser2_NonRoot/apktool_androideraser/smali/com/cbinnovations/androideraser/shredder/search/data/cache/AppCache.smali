.class public Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;
.super Lcom/cbinnovations/androideraser/shredder/search/SearchListener;
.source "AppCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;,
        Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 4

    .line 33
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;

    .line 34
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->cancel(Z)Z

    .line 45
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchStopped()V

    :cond_0
    return-void
.end method
