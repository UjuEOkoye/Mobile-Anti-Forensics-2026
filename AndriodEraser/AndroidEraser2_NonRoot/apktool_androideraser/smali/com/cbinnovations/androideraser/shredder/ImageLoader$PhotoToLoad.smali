.class Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

.field private final url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetimageView(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
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

    .line 130
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->this$0:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Lcom/cbinnovations/androideraser/shredder/ImageLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/shredder/ImageLoader$PhotoToLoad;-><init>(Lcom/cbinnovations/androideraser/shredder/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
