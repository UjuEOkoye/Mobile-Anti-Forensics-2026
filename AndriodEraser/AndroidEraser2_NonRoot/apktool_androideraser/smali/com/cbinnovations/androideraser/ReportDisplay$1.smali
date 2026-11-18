.class Lcom/cbinnovations/androideraser/ReportDisplay$1;
.super Ljava/lang/Object;
.source "ReportDisplay.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ReportDisplay;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ReportDisplay;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ReportDisplay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 107
    :try_start_0
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    .line 108
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->ISO_A4:Landroid/print/PrintAttributes$MediaSize;

    .line 109
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    sget-object v1, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    .line 110
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/ReportDisplay;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 116
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/ReportDisplay;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportDisplay;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    iget-object v4, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-static {v4}, Lcom/cbinnovations/androideraser/ReportDisplay;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportDisplay;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit16 v3, v3, 0x258

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/ReportDisplay;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportDisplay;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 124
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "AndroidEraser_Report.pdf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 126
    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/ReportDisplay;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/ReportDisplay;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-virtual {v1, v0}, Lcom/cbinnovations/androideraser/ReportDisplay;->prepareSharePdfIntent(Landroid/net/Uri;)V

    .line 128
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ReportDisplay;->attachShareIntentAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$1;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportDisplay;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportDisplay;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
