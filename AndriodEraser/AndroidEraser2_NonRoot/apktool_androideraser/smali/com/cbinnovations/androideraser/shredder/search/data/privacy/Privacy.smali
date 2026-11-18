.class public Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;
.super Lcom/cbinnovations/androideraser/shredder/search/SearchListener;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public start(ZZZZZZZZZ)V
    .locals 4

    .line 29
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;

    .line 30
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p9

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    aput-object p6, v2, p1

    const/4 p1, 0x6

    aput-object p7, v2, p1

    const/4 p1, 0x7

    aput-object p8, v2, p1

    const/16 p1, 0x8

    aput-object p9, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->cancel(Z)Z

    .line 41
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchStopped()V

    :cond_0
    return-void
.end method
