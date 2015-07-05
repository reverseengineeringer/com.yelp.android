.class Lcom/yelp/android/ui/dialogs/ab;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field final synthetic c:Lcom/yelp/android/ui/dialogs/y;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/y;Landroid/view/ViewGroup;Landroid/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/ab;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/ab;->b:Landroid/app/TimePickerDialog$OnTimeSetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/y;->d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;I)I

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/y;->d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/y;->b(Lcom/yelp/android/ui/dialogs/y;I)I

    .line 150
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/ab;->b:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/y;->b(Lcom/yelp/android/ui/dialogs/y;)I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/ab;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v4}, Lcom/yelp/android/ui/dialogs/y;->c(Lcom/yelp/android/ui/dialogs/y;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 152
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 153
    return-void
.end method
