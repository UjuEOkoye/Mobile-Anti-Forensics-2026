.class public Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/DataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupHolder"
.end annotation


# instance fields
.field private final groupCheckBox:Landroid/widget/CheckBox;

.field private final groupDivider:Landroid/view/View;

.field private final groupEnd:Landroid/widget/RelativeLayout;

.field private final groupIcon:Landroid/widget/ImageView;

.field private final groupIndicator:Landroid/widget/ImageView;

.field private final groupProgress:Landroid/widget/ProgressBar;

.field private final groupScanIndicator:Landroid/widget/ImageView;

.field private final groupText:Landroid/widget/TextView;

.field private final groupTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/DataAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupDivider(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupDivider:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupEnd(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupEnd:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupIcon(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupProgress(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupScanIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupScanIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupText(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupTitle(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;)V
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

    .line 314
    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    .line 315
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0800ec

    .line 316
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupIcon:Landroid/widget/ImageView;

    const p1, 0x7f0800ed

    .line 317
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0800f0

    .line 318
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupScanIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0800f2

    .line 319
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupTitle:Landroid/widget/TextView;

    const p1, 0x7f0800f1

    .line 320
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupText:Landroid/widget/TextView;

    const p1, 0x7f0800e9

    .line 321
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f0800ee

    .line 322
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f0800eb

    .line 323
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupEnd:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800ea

    .line 324
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->groupDivider:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/DataAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;)V

    return-void
.end method
