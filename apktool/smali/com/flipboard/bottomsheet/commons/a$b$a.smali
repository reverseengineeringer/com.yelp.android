.class Lcom/flipboard/bottomsheet/commons/a$b$a;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final synthetic c:Lcom/flipboard/bottomsheet/commons/a$b;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/a$b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$b$a;->c:Lcom/flipboard/bottomsheet/commons/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    sget v0, Lcom/yelp/android/cq/a$c;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b$a;->a:Landroid/widget/ImageView;

    .line 266
    sget v0, Lcom/yelp/android/cq/a$c;->label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b$a;->b:Landroid/widget/TextView;

    .line 267
    return-void
.end method
