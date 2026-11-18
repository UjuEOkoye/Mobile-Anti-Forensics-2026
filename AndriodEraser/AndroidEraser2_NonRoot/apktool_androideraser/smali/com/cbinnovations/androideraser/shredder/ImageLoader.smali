.class public Lcom/cbinnovations/androideraser/shredder/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;,
        Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;,
        Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;,
        Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;,
        Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final fileCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;

.field private final imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

.field private padding:I

.field private ressource:I

.field public stub_id:Landroid/graphics/drawable/Drawable;

.field private tintColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmemoryCache(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->memoryCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I
    .locals 0

    iget p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetressource(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I
    .locals 0

    iget p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->ressource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettintColor(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I
    .locals 0

    iget p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->tintColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBitmap(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimageViewReused(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->imageViewReused(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->imageViews:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->memoryCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    .line 40
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;

    invoke-direct {v0, p0, p1, v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->fileCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;

    const/4 p1, 0x5

    .line 42
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 107
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v0, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 109
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private imageViewReused(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgeturl(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V

    invoke-direct {v1, p0, v2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public DisplayImage(Landroidx/documentfile/provider/DocumentFile;Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->DisplayImage(Landroidx/documentfile/provider/DocumentFile;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public DisplayImage(Landroidx/documentfile/provider/DocumentFile;Landroid/widget/ImageView;II)V
    .locals 6

    const v5, 0x106000d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->DisplayImage(Landroidx/documentfile/provider/DocumentFile;Landroid/widget/ImageView;III)V

    return-void
.end method

.method public DisplayImage(Landroidx/documentfile/provider/DocumentFile;Landroid/widget/ImageView;III)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->stub_id:Landroid/graphics/drawable/Drawable;

    .line 84
    iput p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->ressource:I

    .line 85
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iput p4, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    .line 87
    iput p5, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->tintColor:I

    .line 89
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->memoryCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 91
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    const p3, 0x106000d

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 93
    iget p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void

    .line 95
    :cond_0
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->stub_id:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 97
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    iget p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->tintColor:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 98
    iget p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    if-ltz p1, :cond_1

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public DisplayImage(Ljava/io/File;Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->DisplayImage(Ljava/io/File;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public DisplayImage(Ljava/io/File;Landroid/widget/ImageView;II)V
    .locals 6

    const v5, 0x106000d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->DisplayImage(Ljava/io/File;Landroid/widget/ImageView;III)V

    return-void
.end method

.method public DisplayImage(Ljava/io/File;Landroid/widget/ImageView;III)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->stub_id:Landroid/graphics/drawable/Drawable;

    .line 56
    iput p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->ressource:I

    .line 57
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput p4, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    .line 59
    iput p5, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->tintColor:I

    .line 61
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->memoryCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 63
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    const p3, 0x106000d

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 65
    iget p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void

    .line 67
    :cond_0
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->stub_id:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 69
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->context:Landroid/content/Context;

    iget p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->tintColor:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 70
    iget p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->padding:I

    if-ltz p1, :cond_1

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->memoryCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->-$$Nest$mclear(Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;)V

    .line 122
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->fileCache:Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;->-$$Nest$mclear(Lcom/cbinnovations/androideraser/shredder/ImageLoader$FileCache;)V

    return-void
.end method
