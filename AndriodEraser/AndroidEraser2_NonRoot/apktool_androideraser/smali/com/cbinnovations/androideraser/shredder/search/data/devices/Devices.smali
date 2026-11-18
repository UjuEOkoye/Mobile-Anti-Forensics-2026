.class public Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;
.super Lcom/cbinnovations/androideraser/shredder/search/SearchListener;
.source "Devices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;
    }
.end annotation


# static fields
.field public static final GRANT_URI_REQUEST_CODE:I = 0x17


# instance fields
.field private final context:Landroid/content/Context;

.field private searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->context:Landroid/content/Context;

    return-void
.end method

.method public static getGrantedDocumentFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;
    .locals 3

    .line 37
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p1
.end method


# virtual methods
.method public start(ZZZ)V
    .locals 4

    .line 48
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;

    .line 49
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->cancel(Z)Z

    .line 60
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchStopped()V

    :cond_0
    return-void
.end method
