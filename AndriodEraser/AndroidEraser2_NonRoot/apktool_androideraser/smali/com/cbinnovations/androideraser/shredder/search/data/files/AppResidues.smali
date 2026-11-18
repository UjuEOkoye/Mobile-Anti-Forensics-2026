.class public Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;
.super Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;
.source "AppResidues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->context:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 5

    .line 39
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->appResidues:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v3, 0x7f0e0008

    .line 40
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f110048

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    .line 44
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getPermission()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 47
    new-array p1, v4, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const/4 p2, 0x0

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-object v0

    .line 49
    :cond_1
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0

    .line 52
    :cond_2
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0
.end method

.method public static search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 11

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :try_start_0
    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getApplicationDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/io/File;

    const-string v3, "data"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "obb"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/io/File;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 69
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 72
    aget-object v6, v4, v2

    .line 73
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 76
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 77
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 78
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 79
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :catch_0
    :cond_3
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f110048

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 102
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;

    .line 103
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
