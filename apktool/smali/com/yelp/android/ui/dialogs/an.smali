.class Lcom/yelp/android/ui/dialogs/an;
.super Ljava/lang/Object;
.source "FlagsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FlagsDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FlagsDialog;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/an;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

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
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/an;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/ao;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/dialogs/ao;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ap;

    .line 131
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/an;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog;Ljava/util/Locale;)Ljava/util/Locale;

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/an;->a:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->b(Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/ar;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/dialogs/ar;->a(Lcom/yelp/android/ui/dialogs/ap;)V

    .line 133
    return-void
.end method
