.class public Lcom/cbinnovations/androideraser/ReportDisplay;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;,
        Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;
    }
.end annotation


# static fields
.field public static final Pass_key:Ljava/lang/String; = "Report"


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mReport:Lcom/cbinnovations/androideraser/shredder/report/Report;

.field private mShareActionProvider:Landroidx/appcompat/widget/ShareActionProvider;

.field private shareIntent:Landroid/content/Intent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportDisplay;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getBitmapFromView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 186
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 187
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 192
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 193
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p2
.end method

.method private initOnCreate()V
    .locals 1

    const v0, 0x7f080134

    .line 88
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ReportDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->initRecyclerView()V

    return-void
.end method

.method private initRecyclerView()V
    .locals 7

    .line 93
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801b5

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mReport:Lcom/cbinnovations/androideraser/shredder/report/Report;

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v3, 0x7f0801b6

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110044

    invoke-virtual {p0, v5}, Lcom/cbinnovations/androideraser/ReportDisplay;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mReport:Lcom/cbinnovations/androideraser/shredder/report/Report;

    invoke-virtual {v5}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f110043

    invoke-virtual {p0, v5}, Lcom/cbinnovations/androideraser/ReportDisplay;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/glxn/qrgen/android/QRCode;->from(Ljava/lang/String;)Lnet/glxn/qrgen/android/QRCode;

    move-result-object v4

    const v5, -0x42c5c6

    const v6, 0xffffff

    .line 98
    invoke-virtual {v4, v5, v6}, Lnet/glxn/qrgen/android/QRCode;->withColor(II)Lnet/glxn/qrgen/android/QRCode;

    move-result-object v4

    const/high16 v5, 0x43020000    # 130.0f

    mul-float v1, v1, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v1, v1}, Lnet/glxn/qrgen/android/QRCode;->withSize(II)Lnet/glxn/qrgen/android/QRCode;

    move-result-object v1

    invoke-virtual {v1}, Lnet/glxn/qrgen/android/QRCode;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lcom/cbinnovations/androideraser/ReportDisplay$1;

    invoke-direct {v3, p0}, Lcom/cbinnovations/androideraser/ReportDisplay$1;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay;)V

    .line 104
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6, v4, v5}, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;-><init>(Landroid/view/View;ZFF)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 159
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mReport:Lcom/cbinnovations/androideraser/shredder/report/Report;

    invoke-static {p0, v3}, Lcom/cbinnovations/androideraser/shredder/report/Report;->create(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/report/Report;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/cbinnovations/androideraser/ReportDisplay$2;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/ReportDisplay$2;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 80
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 81
    iget v1, v0, Landroidx/core/graphics/Insets;->top:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method


# virtual methods
.method public attachShareIntentAction()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mShareActionProvider:Landroidx/appcompat/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getBitmapFromDrawable(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 6

    const-string v0, "share_image_"

    .line 231
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cbinnovations/androideraser/ReportDisplay;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 233
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 234
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 239
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".provider"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 242
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 64
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportDisplay;->setContentView(I)V

    const p1, 0x7f110133

    .line 65
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportDisplay;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportDisplay;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    new-instance p1, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v0, "cb_language"

    const-string v1, "en"

    invoke-virtual {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/utils/Language;->load(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Report"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 70
    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->get(Landroid/content/Context;I)Lcom/cbinnovations/androideraser/shredder/report/Report;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mReport:Lcom/cbinnovations/androideraser/shredder/report/Report;

    .line 71
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->initOnCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x7f110088

    .line 74
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportDisplay;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->finish()V

    .line 78
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_0

    const p1, 0x1020002

    .line 79
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportDisplay;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/cbinnovations/androideraser/ReportDisplay$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/ReportDisplay$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f08015b

    .line 174
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 176
    invoke-static {p1}, Landroidx/core/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ShareActionProvider;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->mShareActionProvider:Landroidx/appcompat/widget/ShareActionProvider;

    .line 178
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->attachShareIntentAction()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 263
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public prepareShareIntent(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 200
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportDisplay;->getBitmapFromDrawable(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    .line 203
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public prepareSharePdfIntent(Landroid/net/Uri;)V
    .locals 2

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    .line 211
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay;->shareIntent:Landroid/content/Intent;

    const-string v0, "application/pdf"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
