.class public Lnet/glxn/qrgen/core/scheme/IFreeBusyTime;
.super Lnet/glxn/qrgen/core/scheme/SubSchema;
.source "IFreeBusyTime.java"


# static fields
.field private static final BEGIN_TODO:Ljava/lang/String; = "BEGIN:VFREEBUSY"

.field public static final NAME:Ljava/lang/String; = "VFREEBUSY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lnet/glxn/qrgen/core/scheme/SubSchema;-><init>()V

    return-void
.end method

.method public static parse(Ljava/util/Map;Ljava/lang/String;)Lnet/glxn/qrgen/core/scheme/SubSchema;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/glxn/qrgen/core/scheme/SubSchema;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public generateString()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "BEGIN:VFREEBUSY\n\nEND:VFREEBUSY"

    return-object v0
.end method

.method public parseSchema(Ljava/util/Map;Ljava/lang/String;)Lnet/glxn/qrgen/core/scheme/SubSchema;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/glxn/qrgen/core/scheme/SubSchema;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/IFreeBusyTime;->generateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
