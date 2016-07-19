.class Lcom/yelp/android/ui/dialogs/FlagsDialog$1;
.super Ljava/lang/Object;
.source "FlagsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/FlagsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FlagsDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FlagsDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog;Ljava/util/Locale;)Ljava/util/Locale;

    .line 134
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$1;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b(Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$b;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V

    .line 135
    return-void
.end method
