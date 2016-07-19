.class Lcom/flipboard/bottomsheet/commons/a$f;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flipboard/bottomsheet/commons/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/commons/a;


# direct methods
.method private constructor <init>(Lcom/flipboard/bottomsheet/commons/a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$f;->a:Lcom/flipboard/bottomsheet/commons/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flipboard/bottomsheet/commons/a;Lcom/flipboard/bottomsheet/commons/a$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/commons/a$f;-><init>(Lcom/flipboard/bottomsheet/commons/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/commons/a$a;Lcom/flipboard/bottomsheet/commons/a$a;)I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/a$a;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/flipboard/bottomsheet/commons/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/flipboard/bottomsheet/commons/a$a;

    check-cast p2, Lcom/flipboard/bottomsheet/commons/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/flipboard/bottomsheet/commons/a$f;->a(Lcom/flipboard/bottomsheet/commons/a$a;Lcom/flipboard/bottomsheet/commons/a$a;)I

    move-result v0

    return v0
.end method
