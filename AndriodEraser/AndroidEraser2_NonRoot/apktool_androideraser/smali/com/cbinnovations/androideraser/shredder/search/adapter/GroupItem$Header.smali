.class public Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;
.super Ljava/lang/Object;
.source "GroupItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private final headerImage:Landroid/graphics/drawable/Drawable;

.field private headerText:Ljava/lang/String;

.field private final headerTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerText:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerImage:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerImage:Landroid/graphics/drawable/Drawable;

    .line 213
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerTitle:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeaderImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->headerText:Ljava/lang/String;

    return-void
.end method
