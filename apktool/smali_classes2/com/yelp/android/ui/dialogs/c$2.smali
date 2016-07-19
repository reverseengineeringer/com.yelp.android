.class Lcom/yelp/android/ui/dialogs/c$2;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c$d;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/c$d;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/c$2;->a:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v4}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v5}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 204
    invoke-static {v7, v0}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(ILjava/util/Calendar;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/yelp/android/ui/dialogs/c$c;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$2;->a:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/dialogs/c$c;-><init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V

    .line 209
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$2;->b:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/c;->b(Lcom/yelp/android/ui/dialogs/c;)Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "TimePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 210
    return-void
.end method
