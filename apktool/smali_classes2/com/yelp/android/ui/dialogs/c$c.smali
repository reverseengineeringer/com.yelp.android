.class Lcom/yelp/android/ui/dialogs/c$c;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/c;

.field private b:Lcom/yelp/android/ui/dialogs/c$d;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/c$c;->b:Lcom/yelp/android/ui/dialogs/c$d;

    .line 398
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 7

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 402
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 403
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v5, v0, :cond_2

    :cond_0
    move v0, v1

    .line 408
    :goto_0
    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$c;->a:Lcom/yelp/android/ui/dialogs/c;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$c;->b:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    .line 417
    :cond_1
    return-void

    .line 405
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
