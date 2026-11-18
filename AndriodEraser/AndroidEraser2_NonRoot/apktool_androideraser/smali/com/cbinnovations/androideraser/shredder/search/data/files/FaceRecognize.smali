.class public Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;
.super Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;
.source "FaceRecognize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$Search;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$Search;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;->context:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 5

    .line 40
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->faceRecognize:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v3, 0x7f0e0003

    .line 41
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f110049

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    .line 45
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getPermission()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 48
    new-array p1, v4, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const/4 p2, 0x0

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-object v0

    .line 50
    :cond_1
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0

    .line 53
    :cond_2
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0
.end method

.method public static search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 3

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".face"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 61
    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;->searchRecursive(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$1;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const v2, 0x7f110049

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static searchRecursive(Ljava/io/File;Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    array-length v2, v1

    if-lez v2, :cond_0

    .line 78
    array-length p0, v1

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, v1, v2

    .line 79
    invoke-static {v3, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;->searchRecursive(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 98
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$Search;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$Search;

    .line 99
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/data/files/FaceRecognize$Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
