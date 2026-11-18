.class public Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExtendedFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileManagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/SimpleDateFormat;

.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field private final padding:I

.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetobjects(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->objects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcanEdit(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->canEdit()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCurrentlyRoot(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->isCurrentlyRoot()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;)V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 591
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 594
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->objects:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x402a000000000000L    # 13.0

    .line 595
    invoke-static {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/Utility;->dpToInt(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    .line 596
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$memptyDir(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ExtendedFileManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method private canEdit()Z
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->isCurrentlyRoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v1, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getCurrentRoot()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$mcanWrite(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentlyRoot()Z
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetrootStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 587
    check-cast p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->onBindViewHolder(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;I)V
    .locals 8

    .line 606
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/documentfile/provider/DocumentFile;

    .line 607
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->notDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 609
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->isCurrentlyRoot()Z

    move-result v1

    const-string v3, " "

    if-eqz v1, :cond_1

    .line 610
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v4, 0x7f11009d

    invoke-virtual {p2, v4}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v6, 0x7f11013b

    invoke-virtual {v5, v6}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetlast_modified(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 613
    :cond_1
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetlast_modified(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_1
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const v5, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 618
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v5, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f050034

    goto :goto_3

    :cond_3
    const v6, 0x106000d

    :goto_3
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 619
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    if-nez v0, :cond_5

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    :goto_4
    const v5, 0x3ecccccd    # 0.4f

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 620
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetlast_modified(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 621
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetamount(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    :cond_7
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 622
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetlayout_checkbox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    const/16 v1, 0x8

    :goto_7
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p2

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 624
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p2

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 626
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 627
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    .line 628
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetamount(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->isCurrentlyRoot()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getTotalSize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_b

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :cond_b
    const-string p2, "0"

    :goto_9
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const v3, 0x7f11007c

    invoke-virtual {p2, v3}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_a
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->isCurrentlyRoot()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0e0002

    goto :goto_b

    :cond_c
    const v0, 0x7f0e000b

    :goto_b
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_c

    .line 632
    :cond_d
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    const v1, 0x7f0e0010

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetamount(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide v3, 0x3ff3333333333333L    # 1.2

    if-nez v0, :cond_e

    .line 635
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetimageLoader(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    move-result-object v1

    move-wide v4, v3

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    int-to-double v6, p2

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    const v6, 0x7f050034

    const v4, 0x7f0e0010

    invoke-virtual/range {v1 .. v6}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->DisplayImage(Landroidx/documentfile/provider/DocumentFile;Landroid/widget/ImageView;III)V

    goto :goto_c

    :cond_e
    move-wide v4, v3

    .line 637
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    int-to-double v0, v0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    int-to-double v6, v0

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    iget v3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v3, v6

    iget v6, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->padding:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {p2, v1, v0, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 641
    :goto_c
    new-instance p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;

    invoke-direct {p2, p0, v2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroidx/documentfile/provider/DocumentFile;Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)V

    .line 669
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v0, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object p2, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;

    invoke-direct {v0, p0, v2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$2;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroidx/documentfile/provider/DocumentFile;Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;
    .locals 2

    .line 601
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0024

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 602
    new-instance p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ExtendedFileManager-IA;)V

    return-object p2
.end method
