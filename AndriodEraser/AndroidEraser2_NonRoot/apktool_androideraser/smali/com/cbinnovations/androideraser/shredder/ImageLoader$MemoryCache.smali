.class Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryCache"
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;


# direct methods
.method static bridge synthetic -$$Nest$mclear(Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->clear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mput(Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->cache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)V

    return-void
.end method

.method private clear()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->cache:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
