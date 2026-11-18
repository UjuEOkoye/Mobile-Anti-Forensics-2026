.class public Lcom/cbinnovations/androideraser/shredder/report/ReportRow;
.super Ljava/lang/Object;
.source "ReportRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;
    }
.end annotation


# static fields
.field public static final ID_ROW:I = 0x1

.field public static final ID_SECTION:I = 0x0

.field public static final ID_SPACER:I = 0x2


# instance fields
.field private info:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;
    .locals 2

    .line 13
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;-><init>()V

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Row:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    iput-object v1, v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    .line 15
    iput-object p0, v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->title:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->info:Ljava/lang/String;

    return-object v0
.end method

.method public static createSection(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;
    .locals 2

    .line 21
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;-><init>()V

    .line 22
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Section:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    iput-object v1, v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    .line 23
    iput-object p0, v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static createSpacer()Lcom/cbinnovations/androideraser/shredder/report/ReportRow;
    .locals 2

    .line 28
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;-><init>()V

    .line 29
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Spacer:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    iput-object v1, v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    return-object v0
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    return-object v0
.end method

.method public isRow()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Row:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSection()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Section:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpacer()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->type:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Spacer:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
