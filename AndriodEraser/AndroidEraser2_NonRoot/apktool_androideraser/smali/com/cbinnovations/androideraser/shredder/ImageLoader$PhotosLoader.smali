.class Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosLoader"
.end annotation


# instance fields
.field private final photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)V
    .locals 0
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

    .line 140
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$mimageViewReused(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgeturl(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$mgetBitmap(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetmemoryCache(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgeturl(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;->-$$Nest$mput(Lcom/cbinnovations/androideraser/shredder/ImageLoader$MemoryCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$mimageViewReused(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/graphics/Bitmap;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V

    .line 151
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotosLoader;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
