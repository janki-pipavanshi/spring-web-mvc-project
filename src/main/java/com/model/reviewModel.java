package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

	@Entity
	public class reviewModel {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int id;
		 private String rev,rate;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getRev() {
			return rev;
		}
		public void setRev(String rev) {
			this.rev = rev;
		}
		public String getRate() {
			return rate;
		}
		public void setRate(String rate) {
			this.rate = rate;
		}
		@Override
		public String toString() {
			return "reviewModel [id=" + id + ", rev=" + rev + ", rate=" + rate + "]";
		}
		
	}


