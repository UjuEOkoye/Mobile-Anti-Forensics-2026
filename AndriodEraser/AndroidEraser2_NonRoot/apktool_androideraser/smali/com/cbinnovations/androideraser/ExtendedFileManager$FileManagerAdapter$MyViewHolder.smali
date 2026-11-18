.class public Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExtendedFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field private final amount:Landroid/widget/TextView;

.field private final checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private final icon:Landroid/widget/ImageView;

.field private final last_modified:Landroid/widget/TextView;

.field private final layout_checkbox:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetamount(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->amount:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticon(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlast_modified(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->last_modified:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayout_checkbox(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->layout_checkbox:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroid/view/View;)V
    .locals 0
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

    .line 718
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    .line 719
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080100

    .line 720
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f080219

    .line 721
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f08005f

    .line 722
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->amount:Landroid/widget/TextView;

    const p1, 0x7f080083

    .line 723
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const p1, 0x7f080111

    .line 724
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->last_modified:Landroid/widget/TextView;

    const p1, 0x7f080113

    .line 725
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;->layout_checkbox:Landroid/widget/RelativeLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ExtendedFileManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter$MyViewHolder;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;Landroid/view/View;)V

    return-void
.end method
