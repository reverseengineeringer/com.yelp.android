.class Lcom/flipboard/bottomsheet/commons/a$1;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/commons/a;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/flipboard/bottomsheet/commons/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/commons/a$e;

.field final synthetic b:Lcom/flipboard/bottomsheet/commons/a;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/a;Lcom/flipboard/bottomsheet/commons/a$e;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$1;->b:Lcom/flipboard/bottomsheet/commons/a;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/a$1;->a:Lcom/flipboard/bottomsheet/commons/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$1;->a:Lcom/flipboard/bottomsheet/commons/a$e;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/a$1;->b:Lcom/flipboard/bottomsheet/commons/a;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/commons/a;->a(Lcom/flipboard/bottomsheet/commons/a;)Lcom/flipboard/bottomsheet/commons/a$b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/flipboard/bottomsheet/commons/a$b;->a(I)Lcom/flipboard/bottomsheet/commons/a$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flipboard/bottomsheet/commons/a$e;->a(Lcom/flipboard/bottomsheet/commons/a$a;)V

    .line 126
    return-void
.end method
