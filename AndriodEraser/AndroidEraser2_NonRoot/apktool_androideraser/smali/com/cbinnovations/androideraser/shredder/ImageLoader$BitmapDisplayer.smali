.class Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;
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
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/graphics/Bitmap;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 165
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/graphics/Bitmap;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Landroid/graphics/Bitmap;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$mimageViewReused(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 173
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetressource(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgettintColor(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 177
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->-$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v3

    iget-object v4, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$BitmapDisplayer;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-static {v4}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->-$$Nest$fgetpadding(Lcom/cbinnovations/androideraser/shredder/ImageLoader;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method
