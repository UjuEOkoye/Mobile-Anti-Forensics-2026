.class Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileCache"
.end annotation


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;


# direct methods
.method static bridge synthetic -$$Nest$mclear(Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->clear()V

    return-void
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->context:Landroid/content/Context;

    .line 212
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    const-string v0, "temp"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->cacheDir:Ljava/io/File;

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/content/Context;)V

    return-void
.end method

.method private clear()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->cacheDir:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method
