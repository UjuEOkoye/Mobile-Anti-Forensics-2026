.class public final enum Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;
.super Ljava/lang/Enum;
.source "ReportRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/report/ReportRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

.field public static final enum Row:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

.field public static final enum Section:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

.field public static final enum Spacer:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;
    .locals 3

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Section:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Row:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Spacer:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    const-string v1, "Section"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Section:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    .line 59
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    const-string v1, "Row"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Row:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    .line 60
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    const-string v1, "Spacer"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Spacer:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    .line 57
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->$values()[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    move-result-object v0

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 57
    const-class v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    return-object p0
.end method

.method public static values()[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;
    .locals 1

    .line 57
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    invoke-virtual {v0}, [Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->value:I

    return v0
.end method
